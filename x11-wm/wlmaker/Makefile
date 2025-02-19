PORTNAME=	wlmaker
DISTVERSIONPREFIX=	v
DISTVERSION=	0.1-444
DISTVERSIONSUFFIX=	-ga388205
CATEGORIES=	x11-wm wayland

MAINTAINER=	jbeich@FreeBSD.org
COMMENT=	Wayland compositor inspired by Window Maker
WWW=		https://github.com/phkaeser/wlmaker

LICENSE=	APACHE20

BUILD_DEPENDS=	evdev-proto>0:devel/evdev-proto \
		wayland-protocols>=1.31:graphics/wayland-protocols
LIB_DEPENDS=	libepoll-shim.so:devel/libepoll-shim \
		libwayland-server.so:graphics/wayland \
		libwlroots.so:x11-toolkits/wlroots \
		libxkbcommon.so:x11/libxkbcommon
RUN_DEPENDS=	foot:x11/foot

USES=		cmake compiler:c11 gnome pkgconfig
USE_GITHUB=	yes
USE_GNOME=	cairo
GH_ACCOUNT=	phkaeser
GH_TUPLE=	phkaeser:libbase:66a3992:libbase/submodules/libbase
PLIST_FILES=	bin/${PORTNAME} \
		bin/wlmclock \
		share/icons/${PORTNAME}/chrome-48x48.png \
		share/icons/${PORTNAME}/clip-48x48.png \
		share/icons/${PORTNAME}/firefox-48x48.png \
		share/icons/${PORTNAME}/terminal-48x48.png \
		${NULL}

post-patch:
# Drop dependency on unreleased version of libwayland
	@${REINPLACE_CMD} -e 's/1\.22\.90/1.22.0/' \
		${WRKSRC}/CMakeLists.txt
# Respect PREFIX for icons
	@${REINPLACE_CMD} 's,/usr/share,${DATADIR:H},' \
		${WRKSRC}/src/decorations.c
# Respect LOCALBASE for apps and use open source Chrome
	@${REINPLACE_CMD} -e 's,/usr/bin,${LOCALBASE}/bin,' \
		 -e 's/google-chrome/chrome/' \
		${WRKSRC}/src/dock.c \
		${WRKSRC}/src/${PORTNAME}.c
# https://bugs.freebsd.org/bugzilla/show_bug.cgi?id=276743
	@${GREP} -Flr _POSIX_C_SOURCE ${WRKSRC} | ${XARGS} ${REINPLACE_CMD} \
		'/_POSIX_C_SOURCE/d'

.include <bsd.port.mk>
