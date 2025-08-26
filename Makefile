
CFLAGS += -DBUILDING_KRMOVIE_DLL -DENABLE_THEORA

BASECLASSES_SOURCES += external/krkrz/external/baseclasses/amextra.cpp external/krkrz/external/baseclasses/amfilter.cpp external/krkrz/external/baseclasses/amvideo.cpp external/krkrz/external/baseclasses/arithutil.cpp external/krkrz/external/baseclasses/combase.cpp external/krkrz/external/baseclasses/cprop.cpp external/krkrz/external/baseclasses/ctlutil.cpp external/krkrz/external/baseclasses/ddmm.cpp external/krkrz/external/baseclasses/dllentry.cpp external/krkrz/external/baseclasses/dllsetup.cpp external/krkrz/external/baseclasses/mtype.cpp external/krkrz/external/baseclasses/outputq.cpp external/krkrz/external/baseclasses/perflog.cpp external/krkrz/external/baseclasses/pstream.cpp external/krkrz/external/baseclasses/pullpin.cpp external/krkrz/external/baseclasses/refclock.cpp external/krkrz/external/baseclasses/renbase.cpp external/krkrz/external/baseclasses/schedule.cpp external/krkrz/external/baseclasses/seekpt.cpp external/krkrz/external/baseclasses/source.cpp external/krkrz/external/baseclasses/strmctl.cpp external/krkrz/external/baseclasses/sysclock.cpp external/krkrz/external/baseclasses/transfrm.cpp external/krkrz/external/baseclasses/transip.cpp external/krkrz/external/baseclasses/videoctl.cpp external/krkrz/external/baseclasses/vtrans.cpp external/krkrz/external/baseclasses/winctrl.cpp external/krkrz/external/baseclasses/winutil.cpp external/krkrz/external/baseclasses/wxdebug.cpp external/krkrz/external/baseclasses/wxlist.cpp external/krkrz/external/baseclasses/wxutil.cpp
LIBOGG_SOURCES += external/krdstheora/external/ogg/src/bitwise.c external/krdstheora/external/ogg/src/framing.c
LIBVORBIS_SOURCES += external/krdstheora/external/vorbis/lib/analysis.c external/krdstheora/external/vorbis/lib/bitrate.c external/krdstheora/external/vorbis/lib/block.c external/krdstheora/external/vorbis/lib/codebook.c external/krdstheora/external/vorbis/lib/envelope.c external/krdstheora/external/vorbis/lib/floor0.c external/krdstheora/external/vorbis/lib/floor1.c external/krdstheora/external/vorbis/lib/info.c external/krdstheora/external/vorbis/lib/lookup.c external/krdstheora/external/vorbis/lib/lpc.c external/krdstheora/external/vorbis/lib/lsp.c external/krdstheora/external/vorbis/lib/mapping0.c external/krdstheora/external/vorbis/lib/mdct.c external/krdstheora/external/vorbis/lib/psy.c external/krdstheora/external/vorbis/lib/registry.c external/krdstheora/external/vorbis/lib/res0.c external/krdstheora/external/vorbis/lib/sharedbook.c external/krdstheora/external/vorbis/lib/smallft.c external/krdstheora/external/vorbis/lib/synthesis.c external/krdstheora/external/vorbis/lib/vorbisenc.c external/krdstheora/external/vorbis/lib/window.c
LIBTHEORA_SOURCES += external/krdstheora/external/theora/lib/apiwrapper.c external/krdstheora/external/theora/lib/bitpack.c external/krdstheora/external/theora/lib/decapiwrapper.c external/krdstheora/external/theora/lib/decinfo.c external/krdstheora/external/theora/lib/decode.c external/krdstheora/external/theora/lib/dequant.c external/krdstheora/external/theora/lib/encoder_disabled.c external/krdstheora/external/theora/lib/fragment.c external/krdstheora/external/theora/lib/huffdec.c external/krdstheora/external/theora/lib/idct.c external/krdstheora/external/theora/lib/info.c external/krdstheora/external/theora/lib/internal.c external/krdstheora/external/theora/lib/quant.c external/krdstheora/external/theora/lib/state.c

SOURCES += dllmain.cpp
SOURCES += \
	external/krkrz/movie/win32/asyncio.cpp \
	external/krkrz/movie/win32/asyncrdr.cpp \
	external/krkrz/movie/win32/BufferRenderer.cpp \
	external/krkrz/movie/win32/CDemuxOutputPin.cpp \
	external/krkrz/movie/win32/CDemuxSource.cpp \
	external/krkrz/movie/win32/CMediaSeekingProxy.cpp \
	external/krkrz/movie/win32/CVMRCustomAllocatorPresenter9.cpp \
	external/krkrz/movie/win32/CWMAllocator.cpp \
	external/krkrz/movie/win32/CWMBuffer.cpp \
	external/krkrz/movie/win32/CWMReader.cpp \
	external/krkrz/movie/win32/DShowException.cpp \
	external/krkrz/movie/win32/dslayerd.cpp \
	external/krkrz/movie/win32/dsmixer.cpp \
	external/krkrz/movie/win32/dsmovie.cpp \
	external/krkrz/movie/win32/dsoverlay.cpp \
	external/krkrz/movie/win32/IBufferRenderer_i.c \
	external/krkrz/movie/win32/init_guid_movie.c \
	external/krkrz/movie/win32/IRendererBufferAccess_i.c \
	external/krkrz/movie/win32/IRendererBufferVideo_i.c \
	external/krkrz/movie/win32/krlmovie.cpp \
	external/krkrz/movie/win32/krmmovie.cpp \
	external/krkrz/movie/win32/krmovie.cpp \
	external/krkrz/movie/win32/MFByteStream.cpp \
	external/krkrz/movie/win32/MFPlayer.cpp \
	external/krkrz/movie/win32/PlayWindow.cpp
SOURCES +=  \
	external/krdstheora/external/oggdsf/src/lib/core/directshow/libDirectshowAbstracts/AbstractTransformFilter.cpp \
	external/krdstheora/external/oggdsf/src/lib/core/directshow/libDirectshowAbstracts/AbstractTransformInputPin.cpp \
	external/krdstheora/external/oggdsf/src/lib/core/directshow/libDirectshowAbstracts/AbstractTransformOutputPin.cpp \
	external/krdstheora/external/oggdsf/src/lib/core/ogg/libOOOggSeek/AutoAnxSeekTable.cpp \
	external/krdstheora/external/oggdsf/src/lib/core/ogg/libOOOggSeek/AutoOggChainGranuleSeekTable.cpp \
	external/krdstheora/external/oggdsf/src/lib/core/ogg/libOOOggSeek/AutoOggSeekTable.cpp \
	external/krdstheora/external/oggdsf/src/lib/core/directshow/libDirectshowAbstracts/BasicSeekPassThrough.cpp \
	external/krdstheora/external/oggdsf/src/lib/core/ogg/libOOOgg/CircularBuffer.cpp \
	external/krdstheora/external/oggdsf/src/lib/core/directshow/dsfOggDemux2/CustomOggChainGranuleSeekTable.cpp \
	external/krdstheora/external/oggdsf/src/lib/core/directshow/dsfOggDemux2/ds_guids.cpp \
	external/krdstheora/external/oggdsf/src/lib/helper/libilliCore/iBE_Math.cpp \
	external/krdstheora/external/oggdsf/src/lib/helper/libilliCore/iLE_Math.cpp \
	external/krdstheora/external/oggdsf/src/lib/core/ogg/libOOOggSeek/OggBinarySeeker.cpp \
	external/krdstheora/external/oggdsf/src/lib/core/ogg/libOOOgg/OggDataBuffer.cpp \
	external/krdstheora/external/oggdsf/src/lib/core/directshow/dsfOggDemux2/OggDemuxFilter.cpp \
	external/krdstheora/external/oggdsf/src/lib/core/directshow/dsfOggDemux2/OggDemuxInputPin.cpp \
	external/krdstheora/external/oggdsf/src/lib/core/directshow/dsfOggDemux2/OggDemuxOutputPin.cpp \
	external/krdstheora/ogg/OggFilterFactory.cpp \
	external/krdstheora/external/oggdsf/src/lib/core/ogg/libOOOggSeek/OggGranuleSeekTable.cpp \
	external/krdstheora/external/oggdsf/src/lib/core/ogg/libOOOgg/OggMuxStream.cpp \
	external/krdstheora/external/oggdsf/src/lib/core/ogg/libOOOgg/OggPacket.cpp \
	external/krdstheora/external/oggdsf/src/lib/core/ogg/libOOOgg/OggPacketiser.cpp \
	external/krdstheora/external/oggdsf/src/lib/core/ogg/libOOOgg/OggPage.cpp \
	external/krdstheora/external/oggdsf/src/lib/core/ogg/libOOOgg/OggPageHeader.cpp \
	external/krdstheora/external/oggdsf/src/lib/core/ogg/libOOOgg/OggPageInterleaver.cpp \
	external/krdstheora/external/oggdsf/src/lib/core/ogg/libOOOgg/OggPaginator.cpp \
	external/krdstheora/external/oggdsf/src/lib/core/ogg/libOOOgg/OggPaginatorSettings.cpp \
	external/krdstheora/external/oggdsf/src/lib/core/ogg/libOOOggSeek/OggSeekPoint.cpp \
	external/krdstheora/external/oggdsf/src/lib/core/ogg/libOOOggSeek/OggSeekTable.cpp \
	external/krdstheora/external/oggdsf/src/lib/core/ogg/libOOOggSeek/OGGSRecogniser.cpp \
	external/krdstheora/external/oggdsf/src/lib/core/directshow/dsfOggDemux2/OggStreamMapper.cpp \
	external/krdstheora/external/oggdsf/src/lib/core/ogg/libOOOgg/StampedOggPacket.cpp \
	external/krdstheora/external/oggdsf/src/lib/helper/libilliCore/StringHelper.cpp \
	external/krdstheora/external/oggdsf/src/lib/codecs/theora/filters/dsfTheoraDecoder/TheoraDecodeFilter.cpp \
	external/krdstheora/external/oggdsf/src/lib/codecs/theora/filters/dsfTheoraDecoder/TheoraDecodeInputPin.cpp \
	external/krdstheora/external/oggdsf/src/lib/codecs/theora/filters/dsfTheoraDecoder/TheoraDecodeOutputPin.cpp \
	external/krdstheora/external/oggdsf/src/lib/codecs/theora/libs/libOOTheora/TheoraDecoder.cpp \
	external/krdstheora/external/oggdsf/src/lib/codecs/vorbis/filters/dsfVorbisDecoder/VorbisDecodeFilter.cpp \
	external/krdstheora/external/oggdsf/src/lib/codecs/vorbis/filters/dsfVorbisDecoder/VorbisDecodeInputPin.cpp \
	external/krdstheora/external/oggdsf/src/lib/codecs/vorbis/filters/dsfVorbisDecoder/VorbisDecodeOutputPin.cpp \
	external/krdstheora/external/oggdsf/src/lib/codecs/vorbis/libs/libOOVorbis/VorbisDecoder.cpp
SOURCES += $(BASECLASSES_SOURCES) $(LIBOGG_SOURCES) $(LIBVORBIS_SOURCES) $(LIBTHEORA_SOURCES)

INCFLAGS += -Iexternal/krkrz/visual/win32 -Iexternal/krkrz/movie/win32 -Iexternal/krkrz/external/baseclasses
INCFLAGS += -Iexternal/krdstheora/ -Iexternal/krdstheora/external/oggdsf/src/lib/core/directshow -Iexternal/krdstheora/external/oggdsf/src/lib/core/ogg -Iexternal/krdstheora/external/oggdsf/src/lib/helper -Iexternal/krdstheora/external/oggdsf/src/lib/codecs/vorbis/filters -Iexternal/krdstheora/external/oggdsf/src/lib/codecs/theora/filters
INCFLAGS += -Iexternal/krdstheora/external/oggdsf/src/lib/core/directshow/dsfOggDemux2 -Iexternal/krdstheora/external/oggdsf/src/lib/core/directshow/libDirectshowAbstracts -Iexternal/krdstheora/external/oggdsf/src/lib/codecs/vorbis/libs/libOOVorbis -Iexternal/krdstheora/external/oggdsf/src/lib/codecs/theora/filters/dsfTheoraDecoder -Iexternal/krdstheora/external/oggdsf/src/lib/helper/common -Iexternal/krdstheora/external/oggdsf/src/lib/codecs/theora/libs/libOOTheora -Iexternal/krdstheora/external/oggdsf/src/lib/codecs/vorbis/filters/dsfVorbisDecoder
INCFLAGS += -Iexternal/krdstheora/external/ogg/include -Iexternal/krdstheora/external/theora/include -Iexternal/krdstheora/external/vorbis/include -Iexternal/krdstheora/external/vorbis/lib -Iexternal/krkrz/external/baseclasses

LDLIBS += -lole32 -loleaut32 -luuid -lwinmm -lstrmiids -lksuser -lgdi32
LDLIBS += -lmpr -ldmoguids -lmfplat -lmfplat -lmf -lpropsys -lmfuuid -lamstrmid -ldxguid -lwindowscodecs
LDLIBS += -lquartz

PROJECT_BASENAME = krmovie

RC_COMMENTS ?= TVP(kirikiri) needs this dll for playing movie storages.
RC_DESC ?= TVP Movie Playback Support DLL
RC_LEGALCOPYRIGHT ?= Copyright (C)2001-2009 W.Dee / T.Imoto All rights reserved.

include external/tp_stubz/Rules.lib.make
