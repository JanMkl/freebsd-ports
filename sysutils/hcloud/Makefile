PORTNAME=	hcloud
DISTVERSIONPREFIX=	v
DISTVERSION=	1.36.0
PORTREVISION=	4
CATEGORIES=	sysutils

MAINTAINER=	uzsolt@FreeBSD.org
COMMENT=	Official Hetzner Cloud command-line interface
WWW=		https://github.com/hetznercloud/cli

LICENSE=	MIT
LICENSE_FILE=	${WRKSRC}/LICENSE

USES=		go:modules

GO_MODULE=	github.com/hetznercloud/cli
GO_TARGET=	./cmd/hcloud

PLIST_FILES=	bin/hcloud

.include <bsd.port.mk>
