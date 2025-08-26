#include <windows.h>
#include "tp_stub.h"
#include "krmovie.h"

#define EXPORT(hr) extern "C" __declspec(dllexport) hr __stdcall

//---------------------------------------------------------------------------
// DllMain
//---------------------------------------------------------------------------
BOOL APIENTRY DllMain( HINSTANCE hModule, 
                       DWORD  ul_reason_for_call, 
                       LPVOID lpReserved
					 )
{
	switch (ul_reason_for_call)
	{
		case DLL_PROCESS_ATTACH:
		{
			DisableThreadLibraryCalls(hModule);
			break;
		}
		case DLL_THREAD_ATTACH:
		case DLL_THREAD_DETACH:
		case DLL_PROCESS_DETACH:
			break;
	}
    return TRUE;
}

//---------------------------------------------------------------------------
// GetAPIVersion
//---------------------------------------------------------------------------
EXPORT(void) GetAPIVersion(DWORD *ver)
{
	*ver = TVP_KRMOVIE_VER;
}
//---------------------------------------------------------------------------

static tjs_int GlobalRefCountAtInit = 0;
//---------------------------------------------------------------------------
// V2Link : Initialize TVP plugin interface
//---------------------------------------------------------------------------
EXPORT(HRESULT) V2Link(iTVPFunctionExporter *exporter)
{
// メモリ確保位置でブレークを貼るには以下のメソッドで確保番号を指定する。
// ブレークがかかった後は、呼び出し履歴(コールスタック)を見て、どこで確保されたメモリがリークしているか探る。
// _CrtDumpMemoryLeaks でデバッグ出力にリークしたメモリの確保番号が出るので、それを入れればOK
// 確保順が不確定な場合は辛いが、スクリプトを固定すればほぼ同じ順で確保されるはず。
//	_CrtSetBreakAlloc(53);	// 指定された回数目のメモリ確保時にブレークを貼る

	TVPInitImportStub(exporter);

	GlobalRefCountAtInit = TVPPluginGlobalRefCount;
	return S_OK;
}
//---------------------------------------------------------------------------
// V2Unlink : Uninitialize TVP plugin interface
//---------------------------------------------------------------------------
EXPORT(HRESULT) V2Unlink()
{
	if(TVPPluginGlobalRefCount > GlobalRefCountAtInit) return E_FAIL;
	TVPUninitImportStub();

#ifdef _DEBUG
	_CrtDumpMemoryLeaks();
#endif

	return S_OK;
}
//---------------------------------------------------------------------------
