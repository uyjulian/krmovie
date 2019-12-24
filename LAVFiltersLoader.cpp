
#define INITGUID 1

#include <windows.h>
#include "tp_stub.h"
#include <strmif.h>
#include <uuids.h>
#include <shlwapi.h>

DEFINE_GUID(CLSID_LAVSplitter, 0x171252A0, 0x8820, 0x4AFE, 0x9D, 0xF8, 0x5C, 0x92, 0xB2, 0xD6, 0x6B, 0x04);
DEFINE_GUID(CLSID_LAVVideo,    0xEE30215D, 0x164F, 0x4A92, 0xA4, 0xEB, 0x9D, 0x4C, 0x13, 0x39, 0x0F, 0x9F);
DEFINE_GUID(CLSID_LAVAudio,    0xE8E73B6B, 0x4CB3, 0x44A4, 0xBE, 0x99, 0x4F, 0x7B, 0xCB, 0x96, 0xE4, 0x91);

static const GUID mediauuid[] = {
	MEDIASUBTYPE_MPEG1System,
	MEDIASUBTYPE_MPEG1Video,
	MEDIASUBTYPE_MPEG1VideoCD,
	MEDIASUBTYPE_Avi,
	MEDIASUBTYPE_QTMovie,
};

bool shouldCleanup = false;
bool filtersCanBeUsed = true;

#define DIRECTSHOW_FILTER_FACTORY_FUNCTION( name ) \
	void* tTVPCreate##name##Filter( void* formatdata ) { \
		IBaseFilter* pFilter; \
		if (FAILED(CoCreateInstance(CLSID_##name, nullptr, CLSCTX_INPROC_SERVER, IID_IBaseFilter, (void**)&pFilter))) { \
			if (shouldCleanup) { \
				filtersCanBeUsed = false; \
				CoUninitialize(); \
				return nullptr; \
			} \
			TVPThrowExceptionMessage(TJS_W("krdslavfilters: could not create filter instance for " #name )); \
		} \
		return pFilter; \
	}

#define DIRECTSHOW_FILTER_CHECK( name ) \
	{ \
		if (filtersCanBeUsed) { \
			IBaseFilter* pFilter = (IBaseFilter*)tTVPCreate##name##Filter(nullptr); \
			if (!pFilter) { \
				if (shouldCleanup) { \
					filtersCanBeUsed = false; \
					CoUninitialize(); \
				} \
				else { \
					TVPThrowExceptionMessage(TJS_W("krdslavfilters: could not retrieve filter " #name )); \
				} \
			} \
			else { \
				pFilter->Release(); \
			} \
		} \
	}

DIRECTSHOW_FILTER_FACTORY_FUNCTION(LAVSplitter);
DIRECTSHOW_FILTER_FACTORY_FUNCTION(LAVVideo);
DIRECTSHOW_FILTER_FACTORY_FUNCTION(LAVAudio);

bool CanLAVFiltersBeUsed(void)
{
	return filtersCanBeUsed;
}

void EnsureLAVFilters(void)
{
	if (FAILED(CoInitializeEx(nullptr, COINIT_APARTMENTTHREADED)))
	{
		filtersCanBeUsed = false;
		return;
		// TVPThrowExceptionMessage(TJS_W("krdslavfilters: could not initialize the COM library"));
	}
	shouldCleanup = true;

	DIRECTSHOW_FILTER_CHECK(LAVSplitter);
	DIRECTSHOW_FILTER_CHECK(LAVVideo);
	DIRECTSHOW_FILTER_CHECK(LAVAudio);

	if (filtersCanBeUsed && shouldCleanup)
		CoUninitialize();
	shouldCleanup = false;
}

