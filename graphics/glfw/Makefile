PORTNAME=	glfw
DISTVERSION=	3.3.9
CATEGORIES=	graphics
MASTER_SITES=	https://github.com/glfw/glfw/releases/download/${PORTVERSION}/

MAINTAINER=	eduardo@FreeBSD.org
COMMENT=	Portable framework for OpenGL development
WWW=		https://www.glfw.org/

LICENSE=	ZLIB
LICENSE_FILE=	${WRKSRC}/LICENSE.md

USES=		cmake:insource localbase zip
USE_LDCONFIG=	yes

CMAKE_ON=	BUILD_SHARED_LIBS

CONFLICTS_INSTALL=	glfw2

PLIST_SUB=	MAJVER=${DISTVERSION:R:R} \
		VERSION=${DISTVERSION:R}
PORTDOCS=	*
PORTEXAMPLES=	*

OPTIONS_DEFINE=			DOCS EXAMPLES
OPTIONS_DEFAULT=		X11
OPTIONS_SINGLE=			PLATFORM
OPTIONS_SINGLE_PLATFORM=	WAYLAND X11
PLATFORM_DESC=			Window creation platform

WAYLAND_BUILD_DEPENDS=	libxkbcommon>0:x11/libxkbcommon \
			wayland-protocols>=0:graphics/wayland-protocols
WAYLAND_LIB_DEPENDS=	libepoll-shim.so:devel/libepoll-shim \
			libwayland-egl.so:graphics/wayland
WAYLAND_USES=		kde:5 pkgconfig
WAYLAND_USE=		KDE=ecm
WAYLAND_CMAKE_BOOL=	GLFW_USE_WAYLAND

X11_USES=	xorg
X11_USE=	XORG=x11,xcursor,xi,xinerama,xrandr,xxf86vm

do-install-DOCS-on:
	@${MKDIR} ${STAGEDIR}${DOCSDIR}/docs/html/search
	${INSTALL_DATA} ${WRKSRC}/README.md ${STAGEDIR}${DOCSDIR}
	${INSTALL_DATA} ${WRKSRC}/docs/html/search/* \
		${STAGEDIR}${DOCSDIR}/docs/html/search
	cd ${WRKSRC}/docs/html && ${INSTALL_DATA} *.html *.png *.css *.js \
		 ${STAGEDIR}${DOCSDIR}/docs/html

do-install-EXAMPLES-on:
	@${MKDIR} ${STAGEDIR}${EXAMPLESDIR}/tests
	cd ${WRKSRC}/examples && ${INSTALL_PROGRAM} \
		boing gears heightmap particles simple splitview wave \
		${STAGEDIR}${EXAMPLESDIR}
	cd ${WRKSRC}/tests && ${INSTALL_PROGRAM} \
		clipboard cursor empty events gamma glfwinfo iconify \
		joysticks monitors msaa reopen tearing \
		threads title windows \
		${STAGEDIR}${EXAMPLESDIR}/tests

.include <bsd.port.mk>
