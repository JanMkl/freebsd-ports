PORTNAME=	resvg-c-api
DISTVERSIONPREFIX=	v
DISTVERSION=	0.40.0
PORTREVISION=	1
CATEGORIES=	graphics

MAINTAINER=	yuri@FreeBSD.org
COMMENT=	SVG rendering library (C++/Qt API)
WWW=		https://github.com/RazrFalcon/resvg

LICENSE=	MPL20
LICENSE_FILE=	${WRKSRC}/../../LICENSE.txt

USES=		cargo
USE_LDCONFIG=	yes

USE_GITHUB=	yes
GH_ACCOUNT=	RazrFalcon
GH_PROJECT=	resvg

WRKSRC_SUBDIR=	crates/c-api

CARGO_CRATES=	adler-1.0.2 \
		arrayref-0.3.7 \
		arrayvec-0.7.4 \
		base64-0.21.7 \
		bitflags-1.3.2 \
		bitflags-2.4.2 \
		bytemuck-1.14.0 \
		cfg-if-1.0.0 \
		color_quant-1.1.0 \
		crc32fast-1.3.2 \
		data-url-0.3.1 \
		fdeflate-0.3.4 \
		flate2-1.0.28 \
		float-cmp-0.9.0 \
		fontconfig-parser-0.5.3 \
		fontdb-0.16.1 \
		gif-0.12.0 \
		imagesize-0.12.0 \
		jpeg-decoder-0.3.1 \
		kurbo-0.9.5 \
		kurbo-0.10.4 \
		libc-0.2.152 \
		log-0.4.20 \
		memmap2-0.9.3 \
		miniz_oxide-0.7.1 \
		once_cell-1.19.0 \
		pico-args-0.5.0 \
		png-0.17.11 \
		rgb-0.8.37 \
		roxmltree-0.18.1 \
		roxmltree-0.19.0 \
		rustybuzz-0.12.1 \
		simd-adler32-0.3.7 \
		simplecss-0.2.1 \
		siphasher-0.3.11 \
		slotmap-1.0.7 \
		smallvec-1.13.1 \
		strict-num-0.1.1 \
		svgtypes-0.14.0 \
		tiny-skia-0.11.4 \
		tiny-skia-path-0.11.4 \
		tinyvec-1.6.0 \
		tinyvec_macros-0.1.1 \
		ttf-parser-0.20.0 \
		unicode-bidi-0.3.15 \
		unicode-bidi-mirroring-0.1.0 \
		unicode-ccc-0.1.2 \
		unicode-properties-0.1.1 \
		unicode-script-0.5.5 \
		unicode-vo-0.1.0 \
		version_check-0.9.4 \
		weezl-0.1.7 \
		xmlparser-0.13.6 \
		xmlwriter-0.1.0

PLIST_FILES=	include/ResvgQt.h \
		include/resvg.h \
		lib/libresvg.a \
		lib/libresvg.so

do-install:
	${INSTALL_DATA} ${WRKSRC}/resvg.h ${STAGEDIR}${PREFIX}/include
	${INSTALL_DATA} ${WRKSRC}/ResvgQt.h ${STAGEDIR}${PREFIX}/include
	cd ${WRKDIR}/target && \
		${INSTALL_LIB} */release/libresvg.so ${STAGEDIR}${PREFIX}/lib && \
		${INSTALL_DATA} */release/libresvg.a ${STAGEDIR}${PREFIX}/lib

.include <bsd.port.mk>
