PORTNAME=	chezmoi
DISTVERSIONPREFIX=	v
DISTVERSION=	2.45.0
PORTREVISION=	1
CATEGORIES=	sysutils
EXTRACT_ONLY=	${_DISTFILES:N*.js}

MAINTAINER=	samir@noir.im
COMMENT=	Manage your dotfiles across multiple diverse machines, securely
WWW=		https://www.chezmoi.io/

LICENSE=	MIT
LICENSE_FILE=	${WRKSRC}/LICENSE

USES=		go:modules python
USE_GITHUB=	yes
USE_GITLAB=	nodefault

GH_ACCOUNT=	twpayne

GH_TUPLE=	Azure:azure-sdk-for-go:0270c003ff8f:azure_azure_sdk_for_go_internal/vendor/github.com/Azure/azure-sdk-for-go \
		Azure:azure-sdk-for-go:35ad235ae1db:azure_azure_sdk_for_go_azidentity \
		Azure:azure-sdk-for-go:446ca6b1d2e0:azure_azure_sdk_for_go_azsecrets \
		Azure:azure-sdk-for-go:bfa13229abec:azure_azure_sdk_for_go_azcore \
		Azure:azure-sdk-for-go:ea9085fb0691:azure_azure_sdk_for_go_internal_1 \
		AzureAD:microsoft-authentication-library-for-go:v1.2.1:azuread_microsoft_authentication_library_for_go/vendor/github.com/AzureAD/microsoft-authentication-library-for-go \
		BobuSumisu:aho-corasick:v1.0.3:bobusumisu_aho_corasick/vendor/github.com/BobuSumisu/aho-corasick \
		FiloSottile:age:v1.1.1:filosottile_age/vendor/filippo.io/age \
		Masterminds:goutils:v1.1.1:masterminds_goutils/vendor/github.com/Masterminds/goutils \
		Masterminds:semver:v3.2.1:masterminds_semver_v3/vendor/github.com/Masterminds/semver/v3 \
		Masterminds:sprig:v3.2.3:masterminds_sprig_v3/vendor/github.com/Masterminds/sprig/v3 \
		Microsoft:go-winio:v0.6.1:microsoft_go_winio/vendor/github.com/Microsoft/go-winio \
		ProtonMail:go-crypto:afb1ddc0824c:protonmail_go_crypto/vendor/github.com/ProtonMail/go-crypto \
		Shopify:ejson:v1.4.1:shopify_ejson/vendor/github.com/Shopify/ejson \
		alecthomas:assert:v2.4.1:alecthomas_assert_v2/vendor/github.com/alecthomas/assert/v2 \
		alecthomas:chroma:v0.10.0:alecthomas_chroma/vendor/github.com/alecthomas/chroma \
		alecthomas:repr:v0.3.0:alecthomas_repr/vendor/github.com/alecthomas/repr \
		alessio:shellescape:v1.4.2:alessio_shellescape/vendor/github.com/alessio/shellescape \
		atotto:clipboard:v0.1.4:atotto_clipboard/vendor/github.com/atotto/clipboard \
		aws:aws-sdk-go-v2:service/internal/presigned-url/v1.10.10:aws_aws_sdk_go_v2_presigned_url/vendor/github.com/aws/aws-sdk-go-v2/service/internal/presigned-url \
		aws:aws-sdk-go-v2:0d643a8f0a8a:aws_aws_sdk_go_v2_accept_encoding/vendor/github.com/aws/aws-sdk-go-v2/service/internal/accept-encoding \
		aws:aws-sdk-go-v2:feature/ec2/imds/v1.14.11:aws_aws_sdk_go_v2_imds/vendor/github.com/aws/aws-sdk-go-v2/feature/ec2/imds \
		aws:aws-sdk-go-v2:v1.16.14:aws_aws_sdk_go_v2_credentials/vendor/github.com/aws/aws-sdk-go-v2/credentials \
		aws:aws-sdk-go-v2:service/sso/v1.18.6:aws_aws_sdk_go_v2_sso/vendor/github.com/aws/aws-sdk-go-v2/service/sso \
		aws:aws-sdk-go-v2:internal/configsources/v1.2.10:aws_aws_sdk_go_v2_configsources/vendor/github.com/aws/aws-sdk-go-v2/internal/configsources \
		aws:aws-sdk-go-v2:service/ssooidc/v1.21.6:aws_aws_sdk_go_v2_ssooidc/vendor/github.com/aws/aws-sdk-go-v2/service/ssooidc \
		aws:aws-sdk-go-v2:v1.24.1:aws_aws_sdk_go_v2/vendor/github.com/aws/aws-sdk-go-v2 \
		aws:aws-sdk-go-v2:5ed0159fba92:aws_aws_sdk_go_v2_secretsmanager/vendor/github.com/aws/aws-sdk-go-v2/service/secretsmanager \
		aws:aws-sdk-go-v2:config/v1.26.3:aws_aws_sdk_go_v2_config/vendor/github.com/aws/aws-sdk-go-v2/config \
		aws:aws-sdk-go-v2:service/sts/v1.26.7:aws_aws_sdk_go_v2_sts/vendor/github.com/aws/aws-sdk-go-v2/service/sts \
		aws:aws-sdk-go-v2:f2706c802925:aws_aws_sdk_go_v2_ini/vendor/github.com/aws/aws-sdk-go-v2/internal/ini \
		aws:aws-sdk-go-v2:internal/endpoints/v2.5.10:aws_aws_sdk_go_v2_v2/vendor/github.com/aws/aws-sdk-go-v2/internal/endpoints/v2 \
		aws:smithy-go:v1.19.0:aws_smithy_go/vendor/github.com/aws/smithy-go \
		aymanbagabas:go-osc52:v2.0.1:aymanbagabas_go_osc52_v2/vendor/github.com/aymanbagabas/go-osc52/v2 \
		aymerick:douceur:v0.2.0:aymerick_douceur/vendor/github.com/aymerick/douceur \
		bmatcuk:doublestar:v4.6.1:bmatcuk_doublestar_v4/vendor/github.com/bmatcuk/doublestar/v4 \
		bradenhilton:cityhash:v1.0.0:bradenhilton_cityhash/vendor/github.com/bradenhilton/cityhash \
		bradenhilton:mozillainstallhash:v1.0.1:bradenhilton_mozillainstallhash/vendor/github.com/bradenhilton/mozillainstallhash \
		charmbracelet:bubbles:v0.17.1:charmbracelet_bubbles/vendor/github.com/charmbracelet/bubbles \
		charmbracelet:bubbletea:v0.25.0:charmbracelet_bubbletea/vendor/github.com/charmbracelet/bubbletea \
		charmbracelet:glamour:v0.6.0:charmbracelet_glamour/vendor/github.com/charmbracelet/glamour \
		charmbracelet:harmonica:v0.2.0:charmbracelet_harmonica/vendor/github.com/charmbracelet/harmonica \
		charmbracelet:lipgloss:v0.9.1:charmbracelet_lipgloss/vendor/github.com/charmbracelet/lipgloss \
		cloudflare:circl:v1.3.7:cloudflare_circl/vendor/github.com/cloudflare/circl \
		containerd:console:1ae8d489ac81:containerd_console/vendor/github.com/containerd/console \
		coreos:go-semver:v0.3.1:coreos_go_semver/vendor/github.com/coreos/go-semver \
		creack:pty:03db72c7b76c:creack_pty_v2/vendor/github.com/creack/pty/v2 \
		cyphar:filepath-securejoin:v0.2.4:cyphar_filepath_securejoin/vendor/github.com/cyphar/filepath-securejoin \
		danieljoos:wincred:v1.2.1:danieljoos_wincred/vendor/github.com/danieljoos/wincred \
		dlclark:regexp2:v1.10.0:dlclark_regexp2/vendor/github.com/dlclark/regexp2 \
		dustin:gojson:2e71ec9dd5ad:dustin_gojson/vendor/github.com/dustin/gojson \
		emirpasic:gods:v1.18.1:emirpasic_gods/vendor/github.com/emirpasic/gods \
		etcd-io:bbolt:v1.3.8:etcd_io_bbolt/vendor/go.etcd.io/bbolt \
		fatih:semgroup:v1.2.0:fatih_semgroup/vendor/github.com/fatih/semgroup \
		fsnotify:fsnotify:v1.7.0:fsnotify_fsnotify/vendor/github.com/fsnotify/fsnotify \
		gitleaks:go-gitdiff:v0.9.0:gitleaks_go_gitdiff/vendor/github.com/gitleaks/go-gitdiff \
		go-git:gcfg:3a3c6141e376:go_git_gcfg/vendor/github.com/go-git/gcfg \
		go-git:go-billy:v5.5.0:go_git_go_billy_v5/vendor/github.com/go-git/go-billy/v5 \
		go-git:go-git:v5.11.0:go_git_go_git_v5/vendor/github.com/go-git/go-git/v5 \
		go-ini:ini:v1.67.0:go_ini_ini/vendor/gopkg.in/ini.v1 \
		go-warnings:warnings:v0.1.2:go_warnings_warnings/vendor/gopkg.in/warnings.v0 \
		go-yaml:yaml:v3.0.1:go_yaml_yaml/vendor/gopkg.in/yaml.v3 \
		godbus:dbus:v5.1.0:godbus_dbus_v5/vendor/github.com/godbus/dbus/v5 \
		golang-jwt:jwt:v5.2.0:golang_jwt_jwt_v5/vendor/github.com/golang-jwt/jwt/v5 \
		golang:appengine:v1.6.8:golang_appengine/vendor/google.golang.org/appengine \
		golang:crypto:v0.18.0:golang_crypto/vendor/golang.org/x/crypto \
		golang:exp:db7319d0e0e3:golang_exp/vendor/golang.org/x/exp \
		golang:groupcache:41bb18bfe9da:golang_groupcache/vendor/github.com/golang/groupcache \
		golang:mod:v0.14.0:golang_mod/vendor/golang.org/x/mod \
		golang:net:v0.20.0:golang_net/vendor/golang.org/x/net \
		golang:oauth2:v0.16.0:golang_oauth2/vendor/golang.org/x/oauth2 \
		golang:protobuf:v1.5.3:golang_protobuf/vendor/github.com/golang/protobuf \
		golang:sync:v0.6.0:golang_sync/vendor/golang.org/x/sync \
		golang:sys:v0.16.0:golang_sys/vendor/golang.org/x/sys \
		golang:term:v0.16.0:golang_term/vendor/golang.org/x/term \
		golang:text:v0.14.0:golang_text/vendor/golang.org/x/text \
		golang:tools:v0.17.0:golang_tools/vendor/golang.org/x/tools \
		google:btree:v1.1.2:google_btree/vendor/github.com/google/btree \
		google:go-github:v58.0.0:google_go_github_v58/vendor/github.com/google/go-github/v58 \
		google:go-querystring:v1.1.0:google_go_querystring/vendor/github.com/google/go-querystring \
		google:renameio:v2.0.0:google_renameio_v2/vendor/github.com/google/renameio/v2 \
		google:uuid:v1.5.0:google_uuid/vendor/github.com/google/uuid \
		gorilla:css:v1.0.1:gorilla_css/vendor/github.com/gorilla/css \
		gregjones:httpcache:901d90724c79:gregjones_httpcache/vendor/github.com/gregjones/httpcache \
		h2non:filetype:v1.1.3:h2non_filetype/vendor/github.com/h2non/filetype \
		hashicorp:hcl:v1.0.0:hashicorp_hcl/vendor/github.com/hashicorp/hcl \
		hexops:gotextdiff:v1.0.3:hexops_gotextdiff/vendor/github.com/hexops/gotextdiff \
		huandu:xstrings:v1.4.0:huandu_xstrings/vendor/github.com/huandu/xstrings \
		imdario:mergo:v0.3.16:imdario_mergo_1/vendor/github.com/imdario/mergo \
		imdario:mergo:v1.0.0:imdario_mergo/vendor/dario.cat/mergo \
		inconshreveable:mousetrap:v1.1.0:inconshreveable_mousetrap/vendor/github.com/inconshreveable/mousetrap \
		itchyny:gojq:v0.12.14:itchyny_gojq/vendor/github.com/itchyny/gojq \
		itchyny:timefmt-go:v0.1.5:itchyny_timefmt_go/vendor/github.com/itchyny/timefmt-go \
		jbenet:go-context:d14ea06fba99:jbenet_go_context/vendor/github.com/jbenet/go-context \
		kevinburke:ssh_config:v1.2.0:kevinburke_ssh_config/vendor/github.com/kevinburke/ssh_config \
		klauspost:compress:v1.17.4:klauspost_compress/vendor/github.com/klauspost/compress \
		kylelemons:godebug:v1.1.0:kylelemons_godebug/vendor/github.com/kylelemons/godebug \
		lucasb-eyer:go-colorful:v1.2.0:lucasb_eyer_go_colorful/vendor/github.com/lucasb-eyer/go-colorful \
		magiconair:properties:v1.8.7:magiconair_properties/vendor/github.com/magiconair/properties \
		mattn:go-colorable:v0.1.13:mattn_go_colorable/vendor/github.com/mattn/go-colorable \
		mattn:go-isatty:v0.0.20:mattn_go_isatty/vendor/github.com/mattn/go-isatty \
		mattn:go-localereader:v0.0.1:mattn_go_localereader/vendor/github.com/mattn/go-localereader \
		mattn:go-runewidth:v0.0.15:mattn_go_runewidth/vendor/github.com/mattn/go-runewidth \
		microcosm-cc:bluemonday:v1.0.25:microcosm_cc_bluemonday/vendor/github.com/microcosm-cc/bluemonday \
		mitchellh:copystructure:v1.2.0:mitchellh_copystructure/vendor/github.com/mitchellh/copystructure \
		mitchellh:mapstructure:v1.5.0:mitchellh_mapstructure/vendor/github.com/mitchellh/mapstructure \
		mitchellh:reflectwalk:v1.0.2:mitchellh_reflectwalk/vendor/github.com/mitchellh/reflectwalk \
		muesli:ansi:276c6243b2f6:muesli_ansi/vendor/github.com/muesli/ansi \
		muesli:cancelreader:v0.2.2:muesli_cancelreader/vendor/github.com/muesli/cancelreader \
		muesli:combinator:v0.3.0:muesli_combinator/vendor/github.com/muesli/combinator \
		muesli:reflow:v0.3.0:muesli_reflow/vendor/github.com/muesli/reflow \
		muesli:termenv:v0.15.2:muesli_termenv/vendor/github.com/muesli/termenv \
		mvdan:sh:v3.7.0:mvdan_sh/vendor/mvdan.cc/sh/v3 \
		olekukonko:tablewriter:v0.0.5:olekukonko_tablewriter/vendor/github.com/olekukonko/tablewriter \
		pelletier:go-toml:v2.1.1:pelletier_go_toml_v2/vendor/github.com/pelletier/go-toml/v2 \
		peterbourgon:diskv:v2.0.1:peterbourgon_diskv/vendor/github.com/peterbourgon/diskv \
		pjbgf:sha1cd:v0.3.0:pjbgf_sha1cd/vendor/github.com/pjbgf/sha1cd \
		pkg:browser:5ac0b6a4141c:pkg_browser/vendor/github.com/pkg/browser \
		pkg:errors:v0.9.1:pkg_errors/vendor/github.com/pkg/errors \
		protocolbuffers:protobuf-go:v1.32.0:protocolbuffers_protobuf_go/vendor/google.golang.org/protobuf \
		rivo:uniseg:v0.4.4:rivo_uniseg/vendor/github.com/rivo/uniseg \
		rogpeppe:go-internal:v1.12.0:rogpeppe_go_internal/vendor/github.com/rogpeppe/go-internal \
		rs:zerolog:v1.31.0:rs_zerolog/vendor/github.com/rs/zerolog \
		sagikazarmark:locafero:v0.4.0:sagikazarmark_locafero/vendor/github.com/sagikazarmark/locafero \
		sagikazarmark:slog-shim:v0.1.0:sagikazarmark_slog_shim/vendor/github.com/sagikazarmark/slog-shim \
		sergi:go-diff:v1.1.0:sergi_go_diff/vendor/github.com/sergi/go-diff \
		shopspring:decimal:v1.3.1:shopspring_decimal/vendor/github.com/shopspring/decimal \
		skeema:knownhosts:v1.2.1:skeema_knownhosts/vendor/github.com/skeema/knownhosts \
		sourcegraph:conc:v0.3.0:sourcegraph_conc/vendor/github.com/sourcegraph/conc \
		spf13:afero:v1.11.0:spf13_afero/vendor/github.com/spf13/afero \
		spf13:cast:v1.6.0:spf13_cast/vendor/github.com/spf13/cast \
		spf13:cobra:v1.8.0:spf13_cobra/vendor/github.com/spf13/cobra \
		spf13:pflag:v1.0.5:spf13_pflag/vendor/github.com/spf13/pflag \
		spf13:viper:v1.18.2:spf13_viper/vendor/github.com/spf13/viper \
		subosito:gotenv:v1.6.0:subosito_gotenv/vendor/github.com/subosito/gotenv \
		tailscale:hujson:20486734a56a:tailscale_hujson/vendor/github.com/tailscale/hujson \
		twpayne:go-expect:v0.0.1:twpayne_go_expect/vendor/github.com/Netflix/go-expect \
		twpayne:go-pinentry:v0.3.0:twpayne_go_pinentry/vendor/github.com/twpayne/go-pinentry \
		twpayne:go-shell:v0.4.0:twpayne_go_shell/vendor/github.com/twpayne/go-shell \
		twpayne:go-vfs:v4.3.0:twpayne_go_vfs_v4/vendor/github.com/twpayne/go-vfs/v4 \
		twpayne:go-xdg:v6.1.2:twpayne_go_xdg_v6/vendor/github.com/twpayne/go-xdg/v6 \
		uber-go:multierr:v1.11.0:uber_go_multierr/vendor/go.uber.org/multierr \
		ulikunitz:xz:v0.5.11:ulikunitz_xz/vendor/github.com/ulikunitz/xz \
		withfig:autocomplete-tools:94f003f2ede4:withfig_autocomplete_tools_cobra/vendor/github.com/withfig/autocomplete-tools \
		xanzy:ssh-agent:v0.3.3:xanzy_ssh_agent/vendor/github.com/xanzy/ssh-agent \
		yuin:goldmark-emoji:v1.0.2:yuin_goldmark_emoji/vendor/github.com/yuin/goldmark-emoji \
		yuin:goldmark:v1.6.0:yuin_goldmark/vendor/github.com/yuin/goldmark \
		zalando:go-keyring:v0.2.3:zalando_go_keyring/vendor/github.com/zalando/go-keyring \
		zricethezav:gitleaks:a59289ca9bd3:zricethezav_gitleaks_v8/vendor/github.com/zricethezav/gitleaks/v8

GL_TUPLE=	https://gitlab.howett.net:go:plist:5afcd134990e1c90a92bac94906f74af0b10042d:go_plist/vendor/howett.net/plist

GO_BUILDFLAGS=	-tags noupgrade \
		-ldflags="\
		-X main.version=${DISTVERSION} \
		-X main.date=${SOURCE_DATE_EPOCH:U${SOURCE_DATE_EPOCH_CMD:sh}}"

PLIST_FILES=	bin/chezmoi

OPTIONS_DEFINE=		BASH DOCS FISH ZSH
OPTIONS_DEFAULT=	BASH DOCS FISH ZSH

BASH_PLIST_FILES=	etc/bash_completion.d/chezmoi
DOCS_MASTER_SITES=	https://unpkg.com/:mermaid_js
DOCS_DISTFILES=		mermaid@8.8.0/dist/mermaid.min.js:mermaid_js

DOCS_BUILD_DEPENDS=	${PYTHON_PKGNAMEPREFIX}mkdocs>0:textproc/py-mkdocs@${PY_FLAVOR} \
			${PYTHON_PKGNAMEPREFIX}mkdocs-material>0:textproc/py-mkdocs-material@${PY_FLAVOR} \
			${PYTHON_PKGNAMEPREFIX}mkdocs-mermaid2-plugin>0:textproc/py-mkdocs-mermaid2-plugin@${PY_FLAVOR} \
			${PYTHON_PKGNAMEPREFIX}mkdocs-simple-hooks>0:textproc/py-mkdocs-simple-hooks@${PY_FLAVOR} \
			${PYTHON_PKGNAMEPREFIX}mkdocs-redirects>0:textproc/py-mkdocs-redirects@${PY_FLAVOR}

DOCS_PORTDOCS=		*
FISH_PLIST_FILES=	share/fish/vendor_functions.d/chezmoi.fish
ZSH_PLIST_FILES=	share/zsh/site-functions/_chezmoi

# Required to bring DISTINFO_FILE
.include <bsd.port.pre.mk>

SOURCE_DATE_EPOCH_CMD=	date -ur $$(grep TIMESTAMP ${DISTINFO_FILE} | ${SED} -e 's/[^0-9]//g') '+%FT%TZ'

do-build-DOCS-on:
	@${CP} ${_DISTDIR}/mermaid@8.8.0/dist/mermaid.min.js ${WRKSRC}/assets/chezmoi.io
	(cd ${WRKSRC}/assets/chezmoi.io && ${SETENV} ${MAKE_ENV} mkdocs build)

post-extract:
	@${RM} -r ${WRKSRC}/vendor/github.com/Azure/azure-sdk-for-go/sdk/azcore
	@${RLN} ${WRKSRC_azure_azure_sdk_for_go_azcore}/sdk/azcore ${WRKSRC}/vendor/github.com/Azure/azure-sdk-for-go/sdk/azcore
	@${RM} -r ${WRKSRC}/vendor/github.com/Azure/azure-sdk-for-go/sdk/azidentity
	@${RLN} ${WRKSRC_azure_azure_sdk_for_go_azidentity}/sdk/azidentity ${WRKSRC}/vendor/github.com/Azure/azure-sdk-for-go/sdk/azidentity
	@${RM} -r ${WRKSRC}/vendor/github.com/Azure/azure-sdk-for-go/sdk/security/keyvault/azsecrets
	@${RLN} ${WRKSRC_azure_azure_sdk_for_go_azsecrets}/sdk/security/keyvault/azsecrets ${WRKSRC}/vendor/github.com/Azure/azure-sdk-for-go/sdk/security/keyvault/azsecrets
	@${RM} -r ${WRKSRC}/vendor/github.com/Azure/azure-sdk-for-go/sdk/security/keyvault/internal
	@${RLN} ${WRKSRC_azure_azure_sdk_for_go_internal_1}/sdk/security/keyvault/internal ${WRKSRC}/vendor/github.com/Azure/azure-sdk-for-go/sdk/security/keyvault/internal

post-install-BASH-on:
	@${MKDIR} ${STAGEDIR}${PREFIX}/etc/bash_completion.d
	${INSTALL_DATA} ${WRKSRC}/completions/chezmoi-completion.bash ${STAGEDIR}${PREFIX}/etc/bash_completion.d/chezmoi

post-install-DOCS-on:
	${MKDIR} ${STAGEDIR}${DOCSDIR}
	(cd ${WRKSRC}/assets/chezmoi.io/site && ${COPYTREE_SHARE} . ${STAGEDIR}${DOCSDIR})

post-install-FISH-on:
	@${MKDIR} ${STAGEDIR}${PREFIX}/share/fish/vendor_functions.d
	${INSTALL_DATA} ${WRKSRC}/completions/chezmoi.fish ${STAGEDIR}${PREFIX}/share/fish/vendor_functions.d/chezmoi.fish

post-install-ZSH-on:
	@${MKDIR} ${STAGEDIR}${PREFIX}/share/zsh/site-functions
	${INSTALL_DATA} ${WRKSRC}/completions/chezmoi.zsh ${STAGEDIR}${PREFIX}/share/zsh/site-functions/_chezmoi

.include <bsd.port.post.mk>
