PORTNAME=	darkbot
PORTVERSION=	6f6.r6
PORTREVISION=	4
PORTEPOCH=	1
CATEGORIES=	irc
MASTER_SITES=	http://darkbot.sourceforge.net/archive/unix/ \
		http://www.BSDCode.org/port/
DISTNAME=	${PORTNAME}-${PORTVERSION:S/./_/}

MAINTAINER=	ports@FreeBSD.org
COMMENT=	IRC talking bot with a fast algorithm for its database
WWW=		https://darkbot.sourceforge.net/

# Converted from NO_CDROM
LICENSE=	darkbot
LICENSE_NAME=	darkbot
LICENSE_TEXT=	no commercial distribution
LICENSE_PERMS=	dist-mirror pkg-mirror auto-accept

SUB_FILES=	pkg-message

PORTDOCS=	README

OPTIONS_DEFINE=	DOCS

pre-configure:
	${CP} ${WRKSRC}/configure ${WRKSRC}/config

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/${PORTNAME} ${STAGEDIR}${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/${PORTNAME}.1.gz ${STAGEDIR}${PREFIX}/share/man/man1/
	${MKDIR} ${STAGEDIR}${ETCDIR}/dat ${STAGEDIR}${ETCDIR}/logs
	${TOUCH} ${STAGEDIR}${ETCDIR}/logs/.pkgcreate
	cd ${WRKSRC}/dat; \
	for file in *; do \
	    ${INSTALL_DATA} $$file ${STAGEDIR}${ETCDIR}/dat/$${file}.dist; \
	done
	${ECHO_CMD} '#!/bin/sh' > ${WRKSRC}/configure
	${ECHO_CMD} 'cd ${ETCDIR} && ${SH} config' >> ${WRKSRC}/configure
.for s in config configure AddServer Adduser
	${INSTALL_SCRIPT} ${WRKSRC}/$s ${STAGEDIR}${ETCDIR}
.endfor

do-install-DOCS-on:
	${MKDIR} ${STAGEDIR}${DOCSDIR}
	${INSTALL_DATA} ${WRKSRC}/docs/README ${STAGEDIR}${DOCSDIR}/

.include <bsd.port.mk>
