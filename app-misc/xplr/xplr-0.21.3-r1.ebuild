# Copyright 2023-2024 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

LUA_COMPAT=( luajit )

CRATES="
	aho-corasick@1.0.2
	android-tzdata@0.1.1
	android_system_properties@0.1.5
	anes@0.1.6
	ansi-to-tui@3.1.0
	anstyle@1.0.1
	anyhow@1.0.72
	arrayvec@0.7.4
	assert_cmd@2.0.12
	autocfg@1.1.0
	beef@0.5.2
	bitflags@1.3.2
	bitflags@2.3.3
	bstr@0.2.17
	bstr@1.6.0
	bumpalo@3.13.0
	cassowary@0.3.0
	cast@0.3.0
	cc@1.0.82
	cfg-if@1.0.0
	chrono@0.4.26
	ciborium-io@0.2.1
	ciborium-ll@0.2.1
	ciborium@0.2.1
	clap@4.3.19
	clap_builder@4.3.19
	clap_lex@0.5.0
	core-foundation-sys@0.8.4
	criterion-plot@0.5.0
	criterion@0.5.1
	crossbeam-channel@0.5.8
	crossbeam-deque@0.8.3
	crossbeam-epoch@0.9.15
	crossbeam-queue@0.3.8
	crossbeam-utils@0.8.16
	crossbeam@0.8.2
	crossterm@0.26.1
	crossterm@0.27.0
	crossterm_winapi@0.9.1
	darling@0.14.4
	darling_core@0.14.4
	darling_macro@0.14.4
	defer-drop@1.3.0
	deranged@0.3.7
	derive_builder@0.11.2
	derive_builder_core@0.11.2
	derive_builder_macro@0.11.2
	difflib@0.4.0
	dirs-next@2.0.0
	dirs-sys-next@0.1.2
	doc-comment@0.3.3
	either@1.9.0
	equivalent@1.0.1
	erased-serde@0.3.28
	errno-dragonfly@0.1.2
	errno@0.3.2
	fnv@1.0.7
	fuzzy-matcher@0.3.7
	gethostname@0.4.3
	getrandom@0.2.10
	half@1.8.2
	hashbrown@0.14.0
	hermit-abi@0.3.2
	home@0.5.5
	humansize@2.1.3
	iana-time-zone-haiku@0.1.2
	iana-time-zone@0.1.57
	ident_case@1.0.1
	indexmap@2.0.0
	indoc@2.0.3
	is-terminal@0.4.9
	itertools@0.10.5
	itoa@1.0.9
	jf@0.6.2
	js-sys@0.3.64
	lazy_static@1.4.0
	libc@0.2.147
	libm@0.2.7
	linux-raw-sys@0.4.5
	lock_api@0.4.10
	log@0.4.19
	lscolors@0.15.0
	lua-src@546.0.0
	luajit-src@210.4.7+resty107baaf
	memchr@2.5.0
	memoffset@0.6.5
	memoffset@0.9.0
	mime@0.3.17
	mime_guess@2.0.4
	minimal-lexical@0.2.1
	mio@0.8.8
	mlua@0.8.9
	natord@1.0.9
	nix@0.24.3
	nix@0.25.1
	nom@7.1.3
	nu-ansi-term@0.49.0
	num-traits@0.2.16
	num_cpus@1.16.0
	num_threads@0.1.6
	once_cell@1.18.0
	oorandom@11.1.3
	parking_lot@0.12.1
	parking_lot_core@0.9.8
	paste@1.0.14
	path-absolutize@3.1.0
	path-dedot@3.1.0
	pin-utils@0.1.0
	pkg-config@0.3.27
	plotters-backend@0.3.5
	plotters-svg@0.3.5
	plotters@0.3.5
	predicates-core@1.0.6
	predicates-tree@1.0.9
	predicates@3.0.3
	proc-macro2@1.0.66
	quote@1.0.32
	ratatui@0.22.0
	rayon-core@1.11.0
	rayon@1.7.0
	redox_syscall@0.2.16
	redox_syscall@0.3.5
	redox_users@0.4.3
	regex-automata@0.3.6
	regex-syntax@0.7.4
	regex@1.9.3
	rustc-hash@1.1.0
	rustix@0.38.7
	rustversion@1.0.14
	ryu@1.0.15
	same-file@1.0.6
	scopeguard@1.2.0
	serde@1.0.183
	serde_derive@1.0.183
	serde_json@1.0.104
	serde_yaml@0.9.25
	signal-hook-mio@0.2.3
	signal-hook-registry@1.4.1
	signal-hook@0.3.17
	skim@0.10.4
	smallvec@1.11.0
	smawk@0.3.1
	snailquote@0.3.1
	strsim@0.10.0
	syn@1.0.109
	syn@2.0.28
	term@0.7.0
	termtree@0.4.1
	textwrap@0.16.0
	thiserror-impl@1.0.44
	thiserror@1.0.44
	thread_local@1.1.7
	time-core@0.1.1
	time-macros@0.2.11
	time@0.1.45
	time@0.3.25
	timer@0.2.0
	tinytemplate@1.2.1
	tui-input@0.8.0
	tuikit@0.5.0
	unicase@2.6.0
	unicode-ident@1.0.11
	unicode-linebreak@0.1.5
	unicode-segmentation@1.10.1
	unicode-width@0.1.10
	unicode_categories@0.1.1
	unsafe-libyaml@0.2.9
	utf8parse@0.2.1
	version_check@0.9.4
	vte@0.11.1
	vte_generate_state_changes@0.1.1
	wait-timeout@0.2.0
	walkdir@2.3.3
	wasi@0.10.0+wasi-snapshot-preview1
	wasi@0.11.0+wasi-snapshot-preview1
	wasm-bindgen-backend@0.2.87
	wasm-bindgen-macro-support@0.2.87
	wasm-bindgen-macro@0.2.87
	wasm-bindgen-shared@0.2.87
	wasm-bindgen@0.2.87
	web-sys@0.3.64
	which@4.4.0
	winapi-i686-pc-windows-gnu@0.4.0
	winapi-util@0.1.5
	winapi-x86_64-pc-windows-gnu@0.4.0
	winapi@0.3.9
	windows-sys@0.48.0
	windows-targets@0.48.1
	windows@0.48.0
	windows_aarch64_gnullvm@0.48.0
	windows_aarch64_msvc@0.48.0
	windows_i686_gnu@0.48.0
	windows_i686_msvc@0.48.0
	windows_x86_64_gnu@0.48.0
	windows_x86_64_gnullvm@0.48.0
	windows_x86_64_msvc@0.48.0
	xdg@2.5.2
"

# <time@0.3.35
# https://github.com/time-rs/time/issues/693
RUST_MAX_VER="1.79.0"

inherit cargo desktop lua-single xdg-utils

DESCRIPTION="A hackable, minimal, fast TUI file explorer"
HOMEPAGE="https://github.com/sayanarijit/xplr"
SRC_URI="
	https://github.com/sayanarijit/xplr/archive/refs/tags/v${PV}.tar.gz -> ${P}.tar.gz
	${CARGO_CRATE_URIS}
"

LICENSE="MIT"
# Dependent crate licenses
LICENSE+=" Apache-2.0 GPL-3 MIT MPL-2.0 Unicode-DFS-2016"
SLOT="0"
KEYWORDS="~amd64"
IUSE="doc"

REQUIRED_USE="${LUA_REQUIRED_USE}"
RDEPEND="
	${LUA_DEPS}
"
DEPEND="
	${RDEPEND}
"

QA_FLAGS_IGNORED="usr/bin/xplr"

pkg_setup() {
	lua-single_pkg_setup
	rust_pkg_setup
}

src_configure() {
	cargo_src_configure --bin xplr
}

src_prepare() {
	sed -i Cargo.toml -e "s/'vendored', //" || die
	# for dynamic linking with lua
	default
}

src_compile() {
	cargo_src_compile
}

src_install() {
	dodoc README.md

	dobin "$(cargo_target_dir)/xplr"
	newicon -s 16 "assets/icon/${PN}16.png" "${PN}.png"
	newicon -s 32 "assets/icon/${PN}32.png" "${PN}.png"
	newicon -s 64 "assets/icon/${PN}64.png" "${PN}.png"
	newicon -s 128 "assets/icon/${PN}128.png" "${PN}.png"
	doicon -s scalable "assets/icon/${PN}.svg"
	domenu assets/desktop/xplr.desktop
}

pkg_postinst() {
	xdg_icon_cache_update
	xdg_desktop_database_update
}

pkg_postrm() {
	xdg_icon_cache_update
	xdg_desktop_database_update
}
