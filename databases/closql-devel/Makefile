PORTNAME=	closql
DISTVERSIONPREFIX=	v
DISTVERSION=	1.2.1-38
DISTVERSIONSUFFIX=	-gdc8cacb
CATEGORIES=	databases elisp
PKGNAMESUFFIX=	-devel${EMACS_PKGNAMESUFFIX}

MAINTAINER=	yasu@FreeBSD.org
COMMENT=	Store EIEIO objects using EmacSQL
WWW=		https://github.com/magit/closql

LICENSE=	GPLv3+
LICENSE_FILE=	${WRKSRC}/LICENSE

BUILD_DEPENDS=	compat.el${EMACS_PKGNAMESUFFIX}>=29.1.4.2:misc/compat.el@${EMACS_FLAVOR} \
		emacsql-devel${EMACS_PKGNAMESUFFIX}>=3.1.1:databases/emacsql-devel@${EMACS_FLAVOR}
RUN_DEPENDS=	compat.el${EMACS_PKGNAMESUFFIX}>=29.1.4.2:misc/compat.el@${EMACS_FLAVOR} \
		emacsql-devel${EMACS_PKGNAMESUFFIX}>=3.1.1:databases/emacsql-devel@${EMACS_FLAVOR}

USES=		emacs gmake
USE_GITHUB=	yes
GH_ACCOUNT=	magit

MAKE_ENV+=	LOAD_PATH="${LOAD_PATH}"

CONFLICTS_INSTALL=	closql closql-emacs_* # share/doc/closql/README.md

NO_ARCH=	yes

PORTDOCS=	README.org

OPTIONS_DEFINE=	DOCS

LOAD_PATH=	-L ${PREFIX}/${EMACS_VERSION_SITE_LISPDIR}/compat -L \
		${PREFIX}/${EMACS_VERSION_SITE_LISPDIR}/emacsql

do-install:
	${MKDIR} ${STAGEDIR}${PREFIX}/${EMACS_VERSION_SITE_LISPDIR}
	(cd ${WRKSRC} && ${INSTALL_DATA} *.el* \
	   ${STAGEDIR}${PREFIX}/${EMACS_VERSION_SITE_LISPDIR})

do-install-DOCS-on:
	@${MKDIR} ${STAGEDIR}${DOCSDIR}
	${INSTALL_DATA} ${WRKSRC}/README.org ${STAGEDIR}${DOCSDIR}

.include <bsd.port.mk>
