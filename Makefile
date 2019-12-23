
BINARY ?= krmovie.dll

LIBTHEORA_SOURCES := external/ogg_win32/libtheora/lib/analyze.c external/ogg_win32/libtheora/lib/encapiwrapper.c external/ogg_win32/libtheora/lib/encfrag.c external/ogg_win32/libtheora/lib/encinfo.c external/ogg_win32/libtheora/lib/encode.c external/ogg_win32/libtheora/lib/enquant.c external/ogg_win32/libtheora/lib/fdct.c external/ogg_win32/libtheora/lib/huffenc.c external/ogg_win32/libtheora/lib/mathops.c external/ogg_win32/libtheora/lib/mcenc.c external/ogg_win32/libtheora/lib/rate.c external/ogg_win32/libtheora/lib/tokenize.c external/ogg_win32/libtheora/lib/x86_vc/mmxencfrag.c external/ogg_win32/libtheora/lib/x86_vc/mmxfdct.c external/ogg_win32/libtheora/lib/x86_vc/x86enc.c external/ogg_win32/libtheora/lib/apiwrapper.c external/ogg_win32/libtheora/lib/bitpack.c external/ogg_win32/libtheora/lib/decapiwrapper.c external/ogg_win32/libtheora/lib/decinfo.c external/ogg_win32/libtheora/lib/decode.c external/ogg_win32/libtheora/lib/dequant.c external/ogg_win32/libtheora/lib/fragment.c external/ogg_win32/libtheora/lib/huffdec.c external/ogg_win32/libtheora/lib/idct.c external/ogg_win32/libtheora/lib/info.c external/ogg_win32/libtheora/lib/internal.c external/ogg_win32/libtheora/lib/quant.c external/ogg_win32/libtheora/lib/state.c external/ogg_win32/libtheora/lib/x86_vc/mmxfrag.c external/ogg_win32/libtheora/lib/x86_vc/mmxidct.c external/ogg_win32/libtheora/lib/x86_vc/mmxstate.c external/ogg_win32/libtheora/lib/x86_vc/x86state.c external/ogg_win32/libtheora/lib/x86_vc/x86cpu.c
LIBVORBIS_SOURCES := external/ogg_win32/libvorbis/lib/analysis.c external/ogg_win32/libvorbis/lib/bitrate.c external/ogg_win32/libvorbis/lib/block.c external/ogg_win32/libvorbis/lib/codebook.c external/ogg_win32/libvorbis/lib/envelope.c external/ogg_win32/libvorbis/lib/floor0.c external/ogg_win32/libvorbis/lib/floor1.c external/ogg_win32/libvorbis/lib/info.c external/ogg_win32/libvorbis/lib/lookup.c external/ogg_win32/libvorbis/lib/lpc.c external/ogg_win32/libvorbis/lib/lsp.c external/ogg_win32/libvorbis/lib/mapping0.c external/ogg_win32/libvorbis/lib/mdct.c external/ogg_win32/libvorbis/lib/psy.c external/ogg_win32/libvorbis/lib/registry.c external/ogg_win32/libvorbis/lib/res0.c external/ogg_win32/libvorbis/lib/sharedbook.c external/ogg_win32/libvorbis/lib/smallft.c external/ogg_win32/libvorbis/lib/synthesis.c external/ogg_win32/libvorbis/lib/vorbisenc.c external/ogg_win32/libvorbis/lib/window.c
LIBOGG_SOURCES := external/ogg_win32/libogg/src/bitwise.c external/ogg_win32/libogg/src/framing.c
BASECLASSES_SOURCES := external/baseclasses/amextra.cpp external/baseclasses/amfilter.cpp external/baseclasses/amvideo.cpp external/baseclasses/arithutil.cpp external/baseclasses/combase.cpp external/baseclasses/ctlutil.cpp external/baseclasses/ddmm.cpp external/baseclasses/mtype.cpp external/baseclasses/outputq.cpp external/baseclasses/perflog.cpp external/baseclasses/pstream.cpp external/baseclasses/pullpin.cpp external/baseclasses/refclock.cpp external/baseclasses/renbase.cpp external/baseclasses/schedule.cpp external/baseclasses/seekpt.cpp external/baseclasses/source.cpp external/baseclasses/strmctl.cpp external/baseclasses/sysclock.cpp external/baseclasses/transfrm.cpp external/baseclasses/transip.cpp external/baseclasses/vtrans.cpp external/baseclasses/wxlist.cpp external/baseclasses/wxutil.cpp
OGG_WIN32_SOURCES := external/ogg_win32/AbstractTransformFilter.cpp external/ogg_win32/AbstractTransformInputPin.cpp external/ogg_win32/AbstractTransformOutputPin.cpp external/ogg_win32/AutoAnxSeekTable.cpp external/ogg_win32/AutoOggChainGranuleSeekTable.cpp external/ogg_win32/AutoOggSeekTable.cpp external/ogg_win32/BasicSeekPassThrough.cpp external/ogg_win32/CircularBuffer.cpp external/ogg_win32/CustomOggChainGranuleSeekTable.cpp external/ogg_win32/ds_guids.cpp external/ogg_win32/iBE_Math.cpp external/ogg_win32/iLE_Math.cpp external/ogg_win32/OggBinarySeeker.cpp external/ogg_win32/OggDataBuffer.cpp external/ogg_win32/OggDemuxFilter.cpp external/ogg_win32/OggDemuxInputPin.cpp external/ogg_win32/OggDemuxOutputPin.cpp external/ogg_win32/OggFilterFactory.cpp external/ogg_win32/OggGranuleSeekTable.cpp external/ogg_win32/OggMuxStream.cpp external/ogg_win32/OggPacket.cpp external/ogg_win32/OggPacketiser.cpp external/ogg_win32/OggPage.cpp external/ogg_win32/OggPageHeader.cpp external/ogg_win32/OggPageInterleaver.cpp external/ogg_win32/OggPaginator.cpp external/ogg_win32/OggPaginatorSettings.cpp external/ogg_win32/OggSeekPoint.cpp external/ogg_win32/OggSeekTable.cpp external/ogg_win32/OGGSRecogniser.cpp external/ogg_win32/OggStreamMapper.cpp external/ogg_win32/StampedOggPacket.cpp external/ogg_win32/StringHelper.cpp external/ogg_win32/TheoraDecodeFilter.cpp external/ogg_win32/TheoraDecodeInputPin.cpp external/ogg_win32/TheoraDecodeOutputPin.cpp external/ogg_win32/TheoraDecoder.cpp external/ogg_win32/VorbisDecodeFilter.cpp external/ogg_win32/VorbisDecodeInputPin.cpp external/ogg_win32/VorbisDecodeOutputPin.cpp external/ogg_win32/VorbisDecoder.cpp
SOURCES := ../tp_stub.cpp asyncio.cpp asyncrdr.cpp BufferRenderer.cpp CDemuxOutputPin.cpp CDemuxSource.cpp CMediaSeekingProxy.cpp CVMRCustomAllocatorPresenter9.cpp CWMAllocator.cpp CWMBuffer.cpp CWMReader.cpp DShowException.cpp dslayerd.cpp dsmixer.cpp dsmovie.cpp dsoverlay.cpp GUID.cpp krlmovie.cpp krmmovie.cpp krmovie.cpp MFPlayer.cpp PlayWindow.cpp StdAfx.cpp $(OGG_WIN32_SOURCES) $(BASECLASSES_SOURCES) $(LIBTHEORA_SOURCES) $(LIBOGG_SOURCES) $(LIBVORBIS_SOURCES)
OBJECTS := $(SOURCES:.cpp=.msvc.o)
OBJECTS := $(OBJECTS:.c=.msvc.o)

export WINEDEBUG=-all

CC = /usr/local/opt/llvm/bin/clang
CXX = /usr/local/opt/llvm/bin/clang++
CL = /opt/msvc/bin/x86/cl
LINK = /opt/msvc/bin/x86/link

CXXFLAGS += -target i686-pc-win32
CXXFLAGS += -fms-compatibility-version=19
CXXFLAGS += -fms-extensions
CXXFLAGS += -fdelayed-template-parsing
CXXFLAGS += -fexceptions
CXXFLAGS += -mthread-model posix
CXXFLAGS += -fno-threadsafe-statics
CXXFLAGS += -Wno-msvc-not-found
CXXFLAGS += -DWIN32
CXXFLAGS += -D_WIN32
CXXFLAGS += -D_MT
CXXFLAGS += -D_DLL
CXXFLAGS += -Xclang -disable-llvm-verifier
CXXFLAGS += -Xclang '--dependent-lib=msvcrt'
CXXFLAGS += -Xclang '--dependent-lib=ucrt'
CXXFLAGS += -Xclang '--dependent-lib=oldnames'
CXXFLAGS += -Xclang '--dependent-lib=vcruntime'
CXXFLAGS += -D_CRT_SECURE_NO_WARNINGS
CXXFLAGS += -D_CRT_NONSTDC_NO_DEPRECATE
CXXFLAGS += -U__GNUC__
CXXFLAGS += -U__gnu_linux__
CXXFLAGS += -U__GNUC_MINOR__
CXXFLAGS += -U__GNUC_PATCHLEVEL__
CXXFLAGS += -U__GNUC_STDC_INLINE__
CXXFLAGS += -isystem /usr/local/opt/llvm/include
CXXFLAGS += -isystem /opt/msvc/vc/tools/msvc/14.16.27023/include
CXXFLAGS += -isystem /opt/msvc/kits/10/include/10.0.17763.0/shared
CXXFLAGS += -isystem /opt/msvc/kits/10/include/10.0.17763.0/ucrt
CXXFLAGS += -isystem /opt/msvc/kits/10/include/10.0.17763.0/um
CXXFLAGS += -isystem /opt/msvc/kits/10/include/10.0.17763.0/winrt

CXXFLAGS += -DUNICODE -D_UNICODE
CXXFLAGS += -DENABLE_THEORA
CXXFLAGS += -DNDEBUG
CXXFLAGS += -O2
CXXFLAGS += -I.
CXXFLAGS += -I..
CXXFLAGS += -I/opt/msvc/vc/tools/msvc/14.16.27023/atlmfc/include
CXXFLAGS += -Iexternal/baseclasses
CXXFLAGS += -Iexternal/ogg_win32
CXXFLAGS += -Iexternal/ogg_win32/libvorbis/include
CXXFLAGS += -Iexternal/ogg_win32/libvorbis/lib
CXXFLAGS += -Iexternal/ogg_win32/libogg/include
CXXFLAGS += -Iexternal/ogg_win32/libogg/src
CXXFLAGS += -Iexternal/ogg_win32/libtheora/include
CXXFLAGS += -Iexternal/ogg_win32/libtheora/lib
CXXFLAGS += -Iexternal
CXXFLAGS += -Wno-invalid-token-paste
CXXFLAGS += -Wno-address-of-temporary
CXXFLAGS += -Wno-c++11-narrowing

CLFLAGS += /nologo
CLFLAGS += /Gr
CLFLAGS += /MD
CLFLAGS += /W4
CLFLAGS += /GR-
CLFLAGS += /O2
CLFLAGS += /Ob1
CLFLAGS += /D "WIN32"
CLFLAGS += /D "NDEBUG"
CLFLAGS += /D "UNICODE"
CLFLAGS += /D "_UNICODE"
CLFLAGS += /GS-
CLFLAGS += /MP
CLFLAGS += /arch:SSE
CLFLAGS += /c
CLFLAGS += /I.
CLFLAGS += /I..
CLFLAGS += /I/opt/msvc/vc/tools/msvc/14.16.27023/atlmfc/include
CLFLAGS += /Iexternal/baseclasses
CLFLAGS += /Iexternal/ogg_win32
CLFLAGS += /Iexternal/ogg_win32/libvorbis/include
CLFLAGS += /Iexternal/ogg_win32/libvorbis/lib
CLFLAGS += /Iexternal/ogg_win32/libogg/include
CLFLAGS += /Iexternal/ogg_win32/libogg/src
CLFLAGS += /Iexternal/ogg_win32/libtheora/include
CLFLAGS += /Iexternal/ogg_win32/libtheora/lib
CLFLAGS += /Iexternal
CLFLAGS += /utf-8


LDFLAGS += -fuse-ld=lld -target i686-pc-win32 -Wl,-machine:x86 -Wl,-def:$(BINARY:.dll=.def) -fmsc-version=1910
LDFLAGS += -L/opt/msvc/vc/tools/msvc/14.16.27023/lib/x86
LDFLAGS += -L/opt/msvc/kits/10/lib/10.0.17763.0/ucrt/x86
LDFLAGS += -L/opt/msvc/kits/10/lib/10.0.17763.0/um/x86
LDFLAGS += -L/opt/msvc/vc/tools/msvc/14.16.27023/atlmfc/lib/x86

LINKFLAGS += /OPT:REF
LINKFLAGS += /nologo
LINKFLAGS += /dll
LINKFLAGS += /DEF:$(BINARY:.dll=.def)
LINKFLAGS += /machine:I386
LINKFLAGS += /LIBPATH:/opt/msvc/vc/tools/msvc/14.16.27023/atlmfc/lib/x86

LDLIBS += -nostdlib -lmsvcrt -Wno-msvc-not-found 

LDLIBS += -lgdi32
LDLIBS += -lwinmm
LDLIBS += -shared

LINKLIBS += gdi32.lib
LINKLIBS += winmm.lib

.PHONY: clean

# $(BINARY): $(OBJECTS)
# 	$(LINK) $(LINKFLAGS) $(LINKLIBS) /out:$@ $^

$(BINARY): $(OBJECTS)
	$(CXX) $(LDFLAGS) -o $@ $^ $(LDLIBS)

# %.msvc.o: %.cpp
# 	$(CL) $(CLFLAGS) /Fo$@ /Tp$<

# %.msvc.o: %.c
# 	$(CL) $(CLFLAGS) /Fo$@ /Tc$<

%.msvc.o: %.cpp
	$(CXX) $(CXXFLAGS) -o $@ -c $<

%.msvc.o: %.c
	$(CC) $(CXXFLAGS) -o $@ -c $<

clean:
	rm -f $(OBJECTS) $(BINARY) $(BINARY:.dll=.lib) $(BINARY:.dll=.exp)
