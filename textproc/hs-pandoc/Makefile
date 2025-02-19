PORTNAME=	pandoc
PORTVERSION=	3.1.11.1
CATEGORIES=	textproc haskell

MAINTAINER=	haskell@FreeBSD.org
COMMENT=	Conversion between markup formats
WWW=		https://pandoc.org

LICENSE=	GPLv2

USES=		cabal

OPTIONS_DEFINE=		EMBED_DATA

EMBED_DATA_DESC=	Embed data files in binary for relocatable executable
EMBED_DATA_CABAL_FLAGS=	embed_data_files

USE_CABAL=	Glob-0.10.2_3 \
		HUnit-1.6.2.0 \
		JuicyPixels-3.3.8_1 \
		OneTuple-0.4.1.1_1 \
		Only-0.1_2 \
		QuickCheck-2.14.3 \
		SHA-1.6.4.4 \
		StateVar-1.2.2 \
		aeson-2.2.1.0_1 \
		aeson-pretty-0.8.10 \
		alex-3.5.0.0 \
		ansi-terminal-1.0.2 \
		ansi-terminal-types-0.11.5_1 \
		appar-0.1.8 \
		asn1-encoding-0.9.6_2 \
		asn1-parse-0.9.5 \
		asn1-types-0.3.4 \
		assoc-1.1_1 \
		async-2.2.5 \
		attoparsec-0.14.4_5 \
		attoparsec-aeson-2.2.0.1 \
		auto-update-0.1.6 \
		base-compat-0.13.1 \
		base-orphans-0.9.1 \
		base-unicode-symbols-0.2.4.2 \
		base16-bytestring-1.0.2.0_1 \
		base64-bytestring-1.2.1.0_1 \
		basement-0.0.16 \
		bifunctors-5.6.1_2 \
		bitvec-1.1.5.0 \
		blaze-builder-0.4.2.3 \
		blaze-html-0.9.1.2_4 \
		blaze-markup-0.8.3.0_1 \
		boring-0.2.1_1 \
		bsb-http-chunked-0.0.0.4_4 \
		byteorder-1.0.4 \
		cabal-doctest-1.0.9_3 \
		call-stack-0.4.0 \
		case-insensitive-1.2.1.0 \
		cassava-0.5.3.0_5 \
		cereal-0.5.8.3 \
		citeproc-0.8.1 \
		cmdargs-0.10.22 \
		colour-2.3.6 \
		commonmark-0.2.5 \
		commonmark-extensions-0.2.5.1 \
		commonmark-pandoc-0.2.2 \
		comonad-5.0.8_2 \
		conduit-1.3.5 \
		conduit-extra-1.3.6 \
		constraints-0.14 \
		contravariant-1.5.5 \
		cookie-0.4.6 \
		crypton-0.34 \
		crypton-connection-0.3.1 \
		crypton-x509-1.7.6_1 \
		crypton-x509-store-1.6.9 \
		crypton-x509-system-1.6.7 \
		crypton-x509-validation-1.6.12 \
		data-default-0.7.1.1 \
		data-default-class-0.1.2.0 \
		data-default-instances-containers-0.0.1 \
		data-default-instances-dlist-0.0.1 \
		data-default-instances-old-locale-0.0.1 \
		data-fix-0.3.2_5 \
		dec-0.0.5_2 \
		digest-0.0.2.0 \
		digits-0.3.1 \
		distributive-0.6.2.1_1 \
		dlist-1.0_1 \
		doclayout-0.4.0.1 \
		doctemplates-0.11 \
		easy-file-0.2.5 \
		emojis-0.1.3 \
		fast-logger-3.2.2 \
		file-embed-0.0.16.0 \
		foldable1-classes-compat-0.1_4 \
		generically-0.1.1_2 \
		gridtables-0.1.0.0_1 \
		haddock-library-1.11.0_3 \
		happy-1.20.1.1 \
		hashable-1.4.3.0_1 \
		haskell-lexer-1.1.1 \
		hourglass-0.2.12 \
		hsc2hs-0.68.10_1 \
		hslua-2.3.1 \
		hslua-aeson-2.3.1 \
		hslua-classes-2.3.1 \
		hslua-cli-1.4.2 \
		hslua-core-2.3.2 \
		hslua-list-1.1.1 \
		hslua-marshalling-2.3.1 \
		hslua-module-doclayout-1.1.1 \
		hslua-module-path-1.1.1 \
		hslua-module-system-1.1.1 \
		hslua-module-text-1.1.1 \
		hslua-module-version-1.1.1 \
		hslua-module-zip-1.1.1 \
		hslua-objectorientation-2.3.1 \
		hslua-packaging-2.3.1 \
		hslua-repl-0.1.2 \
		hslua-typing-0.1.1 \
		http-api-data-0.6_1 \
		http-client-0.7.16 \
		http-client-tls-0.3.6.3 \
		http-date-0.0.11 \
		http-media-0.8.1.1_1 \
		http-types-0.12.4 \
		http2-5.0.1 \
		indexed-traversable-0.1.3 \
		indexed-traversable-instances-0.1.1.2_2 \
		integer-conversion-0.1.0.1_1 \
		integer-logarithms-1.0.3.1_5 \
		iproute-1.7.12 \
		ipynb-0.2_1 \
		isocline-1.0.9 \
		jira-wiki-markup-1.5.1_1 \
		libyaml-0.1.2_1 \
		lpeg-1.0.4 \
		lua-2.3.2 \
		memory-0.18.0 \
		mime-types-0.1.2.0 \
		mmorph-1.2.0_3 \
		monad-control-1.0.3.1 \
		mono-traversable-1.0.15.3 \
		network-3.1.4.0_1 \
		network-byte-order-0.1.7 \
		network-control-0.0.2 \
		network-uri-2.6.4.2_1 \
		old-locale-1.0.0.7_2 \
		old-time-1.1.0.4 \
		optparse-applicative-0.18.1.0 \
		ordered-containers-0.2.3 \
		pandoc-3.1.11.1 \
		pandoc-lua-engine-0.2.1.2_1 \
		pandoc-lua-marshal-0.2.4 \
		pandoc-server-0.1.0.4 \
		pandoc-types-1.23.1_1 \
		pem-0.2.4 \
		pretty-show-1.10 \
		prettyprinter-1.7.1 \
		prettyprinter-ansi-terminal-1.1.3 \
		primitive-0.9.0.0 \
		psqueues-0.2.8.0 \
		random-1.2.1.1_1 \
		recv-0.1.0 \
		regex-base-0.94.0.2_4 \
		regex-tdfa-1.3.2.2_2 \
		resourcet-1.3.0 \
		safe-0.3.21 \
		safe-exceptions-0.1.7.4_1 \
		scientific-0.3.7.0_7 \
		semialign-1.3_1 \
		semigroupoids-6.0.0.1_1 \
		servant-0.20.1_2 \
		servant-server-0.20_4 \
		simple-sendfile-0.2.32 \
		singleton-bool-0.1.7_1 \
		skylighting-0.14.1 \
		skylighting-core-0.14.1 \
		skylighting-format-ansi-0.1 \
		skylighting-format-blaze-html-0.1.1.1 \
		skylighting-format-context-0.1.0.2 \
		skylighting-format-latex-0.1 \
		socks-0.6.1 \
		some-1.0.6 \
		sop-core-0.5.0.2_3 \
		split-0.2.5 \
		splitmix-0.1.0.5 \
		streaming-commons-0.2.2.6_1 \
		strict-0.5_1 \
		string-conversions-0.4.0.1_1 \
		syb-0.7.2.4 \
		tagged-0.8.8 \
		tagsoup-0.14.8 \
		temporary-1.3 \
		texmath-0.12.8.6 \
		text-conversions-0.3.1.1 \
		text-iso8601-0.1_1 \
		text-short-0.1.5_3 \
		th-abstraction-0.6.0.0_1 \
		th-compat-0.1.4_4 \
		th-lift-0.8.4 \
		th-lift-instances-0.1.20 \
		these-1.2_1 \
		time-compat-1.9.6.1_6 \
		time-manager-0.0.1 \
		tls-1.9.0 \
		toml-parser-1.3.2.0 \
		transformers-base-0.4.6 \
		transformers-compat-0.7.2 \
		type-equality-1_6 \
		typed-process-0.2.11.1 \
		typst-0.5 \
		typst-symbols-0.1.5_1 \
		unicode-collation-0.1.3.6 \
		unicode-data-0.4.0.1_2 \
		unicode-transforms-0.4.0.1_4 \
		uniplate-1.6.13_1 \
		unix-compat-0.7.1 \
		unix-time-0.4.11 \
		unliftio-0.2.25.0 \
		unliftio-core-0.2.1.0_3 \
		unordered-containers-0.2.20_1 \
		utf8-string-1.0.2 \
		uuid-types-1.0.5.1 \
		vault-0.3.1.5_5 \
		vector-0.13.1.0 \
		vector-algorithms-0.9.0.1_3 \
		vector-stream-0.1.0.1 \
		wai-3.2.4 \
		wai-app-static-3.1.8 \
		wai-cors-0.2.7 \
		wai-extra-3.1.14 \
		wai-logger-2.4.0 \
		warp-3.3.31 \
		witherable-0.4.2_4 \
		word8-0.1.3 \
		xml-1.3.14_2 \
		xml-conduit-1.9.1.3 \
		xml-types-0.3.8 \
		yaml-0.11.11.2_2 \
		zip-archive-0.4.3 \
		zlib-0.6.3.0_4

CABAL_FLAGS=	lua

HACKAGE_DISTNAME=	pandoc-cli-0.1.1.1
CABAL_WRAPPER_SCRIPTS=	${CABAL_EXECUTABLES}

OPTIONS_SUB=	yes

.include <bsd.port.options.mk>

.if ${PORT_OPTIONS:MEMBED_DATA}
# No need to use wrapper scripts when all data is compiled into an executable
.undef CABAL_WRAPPER_SCRIPTS
.endif

.include <bsd.port.pre.mk>

.if ${ARCH} == i386
# compiler goes out of memory
BUILD_ARGS+=	--disable-optimization
.endif

post-install-EMBED_DATA-off:
	cd ${CABAL_DEPSDIR}/${PORTNAME}-${PORTVERSION} && ${COPYTREE_SHARE} data ${STAGEDIR}${DATADIR}

.include <bsd.port.post.mk>
