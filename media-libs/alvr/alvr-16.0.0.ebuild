# Copyright 2021-2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

# You will need games-util/steam-client-meta from the steam-overlay for this to work

# List generated by 'cargo ebuild --manifest-path [absolute path]/alvr/*/Cargo.toml' and sorted by sort -u *.ebuild

EAPI=8

CRATES="
	ab_glyph@0.2.11
	ab_glyph_rasterizer@0.1.4
	addr2line@0.15.1
	adler@1.0.2
	ahash@0.3.8
	ahash@0.4.7
	ahash@0.7.4
	aho-corasick@0.7.18
	alcro@0.5.3
	alsa@0.5.0
	alsa-sys@0.3.1
	andrew@0.3.1
	android_glue@0.2.3
	android_logger@0.10.1
	android_log-sys@0.2.0
	ansi_term@0.11.0
	anyhow@1.0.40
	approx@0.5.0
	arrayvec@0.5.2
	ash@0.32.1
	associative-cache@1.0.1
	atk@0.9.0
	atk-sys@0.10.0
	atomic_refcell@0.1.7
	atty@0.2.14
	autocfg@1.0.1
	backtrace@0.3.59
	base64@0.13.0
	base-x@0.2.8
	bincode@1.3.3
	bindgen@0.56.0
	bindgen@0.58.1
	bindgen@0.59.0
	bitflags@1.2.1
	bit-set@0.5.2
	bitvec@0.19.5
	bit-vec@0.6.3
	block@0.1.6
	block-buffer@0.9.0
	bumpalo@3.6.1
	byteorder@1.4.3
	bytes@1.0.1
	cairo-rs@0.9.1
	cairo-sys-rs@0.10.0
	calloop@0.6.5
	cc@1.0.67
	cesu8@1.1.0
	cexpr@0.4.0
	cexpr@0.5.0
	cfg_aliases@0.1.1
	cfg-if@0.1.10
	cfg-if@1.0.0
	cgl@0.3.2
	chrono@0.4.19
	chunked_transfer@1.4.0
	clang-sys@1.2.0
	clap@2.33.3
	claxon@0.4.3
	clipboard-win@3.1.1
	cocoa@0.24.0
	cocoa-foundation@0.1.0
	codespan-reporting@0.11.1
	combine@4.5.2
	console_log@0.2.0
	const_fn@0.4.7
	copyless@0.1.5
	copypasta@0.7.1
	coreaudio-rs@0.10.0
	coreaudio-sys@0.2.8
	core-foundation@0.7.0
	core-foundation@0.9.1
	core-foundation-sys@0.6.2
	core-foundation-sys@0.7.0
	core-foundation-sys@0.8.2
	core-graphics@0.19.2
	core-graphics@0.22.2
	core-graphics-types@0.1.1
	core-text@19.2.0
	core-video-sys@0.1.4
	cpal@0.13.3
	cpufeatures@0.1.4
	crossbeam@0.8.0
	crossbeam-channel@0.5.1
	crossbeam-deque@0.8.0
	crossbeam-epoch@0.9.4
	crossbeam-queue@0.3.1
	crossbeam-utils@0.8.4
	d3d12@0.4.0
	dark-light@0.1.1
	darling@0.10.2
	darling_core@0.10.2
	darling_macro@0.10.2
	dashmap@4.0.2
	derivative@2.2.0
	digest@0.9.0
	dirs@3.0.2
	dirs-sys@0.3.6
	discard@1.0.4
	dispatch@0.2.0
	dlib@0.4.2
	dlib@0.5.0
	doc-comment@0.3.3
	downcast-rs@1.2.0
	drm-fourcc@2.1.1
	druid@0.7.0
	druid-derive@0.4.0
	druid-shell@0.7.0
	dwrote@0.11.0
	eframe@0.13.1
	egui@0.13.1
	egui_glium@0.13.1
	egui_web@0.13.0
	either@1.6.1
	emath@0.13.0
	encoding_rs@0.8.28
	encoding_rs_io@0.1.7
	env_logger@0.8.3
	epaint@0.13.0
	epi@0.13.0
	errno@0.2.7
	errno-dragonfly@0.1.1
	exec@0.3.1
	external-memory@0.0.1
	failure@0.1.8
	fern@0.6.0
	fixedbitset@0.2.0
	fluent@0.16.0
	fluent-bundle@0.12.0
	fluent-bundle@0.15.1
	fluent-langneg@0.13.0
	fluent-syntax@0.11.0
	fluent-syntax@0.9.3
	fnv@1.0.7
	foreign-types@0.3.2
	foreign-types-shared@0.1.1
	form_urlencoded@1.0.1
	fs_extra@1.2.0
	funty@1.1.0
	futures@0.3.15
	futures-channel@0.3.15
	futures-core@0.3.15
	futures-executor@0.3.15
	futures-io@0.3.15
	futures-macro@0.3.15
	futures-sink@0.3.15
	futures-task@0.3.15
	futures-timer@3.0.2
	futures-util@0.3.15
	fxhash@0.2.1
	gcc@0.3.55
	gdk@0.13.2
	gdk-pixbuf@0.9.0
	gdk-pixbuf-sys@0.10.0
	gdk-sys@0.10.0
	generic-array@0.14.4
	getrandom@0.2.2
	gfx-auxil@0.10.0
	gfx-backend-dx11@0.9.0
	gfx-backend-dx12@0.9.1
	gfx-backend-empty@0.9.0
	gfx-backend-gl@0.9.0
	gfx-backend-metal@0.9.1
	gfx-backend-vulkan@0.9.0
	gfx-hal@0.9.0
	gfx-renderdoc@0.1.0
	gimli@0.24.0
	gio@0.9.1
	gio-sys@0.10.1
	gl_generator@0.14.0
	glib@0.10.3
	glib-macros@0.10.1
	glib-sys@0.10.1
	glium@0.30.1
	glob@0.3.0
	glow@0.9.0
	glutin@0.27.0
	glutin_egl_sys@0.1.5
	glutin_emscripten_sys@0.1.1
	glutin_gles2_sys@0.1.5
	glutin_glx_sys@0.1.7
	glutin_wgl_sys@0.1.5
	gobject-sys@0.10.0
	governor@0.3.2
	gpu-alloc@0.4.7
	gpu-alloc-types@0.2.0
	gpu-descriptor@0.1.1
	gpu-descriptor-types@0.1.1
	gtk@0.9.2
	gtk-sys@0.10.0
	h2@0.3.3
	hashbrown@0.8.2
	hashbrown@0.9.1
	headers@0.3.4
	headers-core@0.2.0
	heck@0.3.2
	hermit-abi@0.1.18
	hound@3.4.0
	http@0.2.4
	httparse@1.4.1
	http-body@0.4.2
	httpdate@1.0.0
	humantime@2.1.0
	hyper@0.14.7
	hyper-tls@0.5.0
	ident_case@1.0.1
	idna@0.2.3
	indexmap@1.6.2
	Inflector@0.11.4
	inplace_it@0.3.3
	instant@0.1.9
	intl-memoizer@0.5.1
	intl_pluralrules@7.0.1
	ipnet@2.3.0
	itertools@0.9.0
	itoa@0.4.7
	jni@0.18.0
	jni@0.19.0
	jni-sys@0.3.0
	jobserver@0.1.22
	js-sys@0.3.51
	keyboard-types@0.5.0
	khronos_api@3.1.0
	khronos-egl@4.1.0
	kurbo@0.7.1
	lazy-bytes-cast@5.0.1
	lazycell@1.3.0
	lazy_static@1.4.0
	lewton@0.10.2
	libc@0.2.94
	libloading@0.6.7
	libloading@0.7.0
	locale_config@0.3.0
	lock_api@0.4.4
	log@0.4.14
	mach@0.3.2
	malloc_buf@0.0.6
	matches@0.1.8
	matrixmultiply@0.3.1
	maybe-uninit@2.0.0
	memchr@2.4.0
	memmap2@0.1.0
	memmap2@0.2.3
	memoffset@0.6.3
	metal@0.23.0
	mime@0.3.16
	minimp3@0.5.1
	minimp3-sys@0.3.2
	miniz_oxide@0.4.4
	mio@0.7.11
	mio-misc@1.2.1
	miow@0.3.7
	msgbox@0.6.0
	naga@0.5.0
	nalgebra@0.28.0
	nalgebra-macros@0.1.0
	native-tls@0.2.7
	ndk@0.3.0
	ndk-glue@0.3.0
	ndk-macro@0.2.0
	ndk-sys@0.2.1
	nix@0.18.0
	nix@0.19.1
	nix@0.20.0
	nom@5.1.2
	nom@6.1.2
	nonzero_ext@0.2.0
	no-std-compat@0.4.1
	ntapi@0.3.6
	num-complex@0.4.0
	num_cpus@1.13.0
	num-derive@0.3.3
	num_enum@0.5.1
	num_enum_derive@0.5.1
	num-integer@0.1.44
	num-rational@0.4.0
	num-traits@0.2.14
	objc@0.2.7
	objc_exception@0.1.2
	objc-foundation@0.1.1
	objc_id@0.1.1
	object@0.24.0
	oboe@0.4.1
	oboe-sys@0.4.0
	ogg@0.8.0
	once_cell@1.7.2
	opaque-debug@0.3.0
	openssl@0.10.34
	openssl-probe@0.1.4
	openssl-sys@0.9.63
	ordered-float@2.7.0
	osmesa-sys@0.1.2
	os_str_bytes@3.1.0
	ouroboros@0.9.5
	ouroboros_macro@0.9.5
	owned_ttf_parser@0.12.1
	owned_ttf_parser@0.6.0
	pango@0.9.1
	pango-sys@0.10.0
	parking_lot@0.11.1
	parking_lot_core@0.8.3
	paste@1.0.5
	peeking_take_while@0.1.2
	pem@0.8.3
	percent-encoding@2.1.0
	petgraph@0.5.1
	pico-args@0.4.1
	piet@0.3.1
	piet-cairo@0.3.0
	piet-common@0.3.2
	piet-coregraphics@0.3.0
	piet-direct2d@0.3.0
	piet-web@0.3.1
	pin-project@1.0.7
	pin-project-internal@1.0.7
	pin-project-lite@0.2.6
	pin-utils@0.1.0
	pkg-config@0.3.19
	ppv-lite86@0.2.10
	proc-macro2@1.0.26
	proc-macro-crate@0.1.5
	proc-macro-error@1.0.4
	proc-macro-error-attr@1.0.4
	proc-macro-hack@0.5.19
	proc-macro-nested@0.1.7
	profiling@1.0.3
	quanta@0.4.1
	quote@1.0.9
	radium@0.5.3
	rand@0.8.3
	rand_chacha@0.3.0
	rand_core@0.6.2
	rand_hc@0.3.0
	range-alloc@0.1.2
	rawpointer@0.2.1
	raw-window-handle@0.3.3
	rayon@1.5.0
	rayon-core@1.9.0
	rcgen@0.8.11
	redox_syscall@0.2.8
	redox_users@0.4.0
	regex@1.5.4
	regex-syntax@0.6.25
	remove_dir_all@0.5.3
	renderdoc-sys@0.7.1
	rental@0.5.6
	rental-impl@0.5.5
	reqwest@0.11.3
	ring@0.16.20
	rodio@0.14.0
	rose_tree@0.2.0
	runas@0.2.1
	rustc-demangle@0.1.19
	rustc-hash@1.1.0
	rustc_version@0.2.3
	rustls@0.19.1
	rusttype@0.9.2
	ryu@1.0.5
	same-file@1.0.6
	schannel@0.1.19
	scoped-tls@1.0.0
	scopeguard@1.1.0
	sct@0.6.1
	security-framework@2.2.0
	security-framework-sys@2.2.0
	semver@0.9.0
	semver@1.0.3
	semver-parser@0.7.0
	serde@1.0.127
	serde_derive@1.0.127
	serde_json@1.0.66
	serde_urlencoded@0.7.0
	sha1@0.6.0
	sha-1@0.9.6
	shared_library@0.1.9
	shlex@0.1.1
	shlex@1.0.0
	signal-hook-registry@1.3.0
	simba@0.5.1
	simple_logger@1.11.0
	single-instance@0.3.1
	slab@0.4.3
	slice-deque@0.3.0
	slotmap@0.4.2
	smallvec@1.6.1
	smithay-client-toolkit@0.12.3
	smithay-client-toolkit@0.14.0
	smithay-clipboard@0.6.4
	socket2@0.4.0
	spin@0.5.2
	spirv_cross@0.23.1
	stable_deref_trait@1.2.0
	standback@0.2.17
	stdweb@0.1.3
	stdweb@0.4.20
	stdweb-derive@0.5.3
	stdweb-internal-macros@0.2.9
	stdweb-internal-runtime@0.1.5
	storage-map@0.3.0
	strsim@0.8.0
	strsim@0.9.3
	strum@0.18.0
	strum_macros@0.18.0
	syn@1.0.72
	sysinfo@0.19.2
	system-deps@1.3.2
	takeable-option@0.5.0
	tap@1.0.1
	tempfile@3.2.0
	termcolor@1.1.2
	textwrap@0.11.0
	thiserror@1.0.24
	thiserror-impl@1.0.24
	thunderdome@0.4.1
	time@0.1.43
	time@0.2.26
	time-macros@0.1.1
	time-macros-impl@0.1.1
	tinyfiledialogs@3.3.10
	tinystr@0.3.4
	tinyvec@1.2.0
	tinyvec_macros@0.1.0
	tokio@1.6.0
	tokio-macros@1.2.0
	tokio-native-tls@0.3.0
	tokio-tungstenite@0.15.0
	tokio-util@0.6.7
	toml@0.5.8
	tower-service@0.3.1
	tracing@0.1.26
	tracing-core@0.1.18
	try-lock@0.2.3
	ttf-parser@0.12.3
	ttf-parser@0.6.2
	tungstenite@0.14.0
	type-map@0.4.0
	typenum@1.13.0
	unic-bidi@0.9.0
	unic-char-property@0.9.0
	unic-char-range@0.9.0
	unic-common@0.9.0
	unic-langid@0.9.0
	unic-langid-impl@0.9.0
	unicode-bidi@0.3.5
	unicode-normalization@0.1.17
	unicode-segmentation@1.7.1
	unicode-width@0.1.8
	unicode-xid@0.2.2
	unic-ucd-bidi@0.9.0
	unic-ucd-version@0.9.0
	untrusted@0.7.1
	ureq@2.1.1
	url@2.2.2
	spirv_headers@1.5.0
	utf16_lit@1.0.1
	utf-8@0.7.6
	vcpkg@0.2.12
	vec_map@0.8.2
	version_check@0.9.3
	version-compare@0.0.10
	walkdir@2.3.2
	want@0.3.0
	wasi@0.10.2+wasi-snapshot-preview1
	wasm-bindgen@0.2.74
	wasm-bindgen-backend@0.2.74
	wasm-bindgen-futures@0.4.24
	wasm-bindgen-macro@0.2.74
	wasm-bindgen-macro-support@0.2.74
	wasm-bindgen-shared@0.2.74
	wayland-client@0.28.5
	wayland-commons@0.28.5
	wayland-cursor@0.28.5
	wayland-egl@0.28.5
	wayland-protocols@0.28.5
	wayland-scanner@0.28.5
	wayland-sys@0.28.5
	webbrowser@0.5.5
	webpki@0.21.4
	webpki-roots@0.21.1
	web-sys@0.3.50
	wgpu@0.9.0
	wgpu-core@0.9.2
	wgpu-types@0.9.0
	which@3.1.1
	widestring@0.4.3
	winapi@0.3.9
	winapi-i686-pc-windows-gnu@0.4.0
	winapi-util@0.1.5
	winapi-x86_64-pc-windows-gnu@0.4.0
	winit@0.25.0
	winreg@0.7.0
	winreg@0.8.0
	winreg@0.9.0
	winres@0.1.11
	wio@0.2.2
	wyz@0.2.0
	x11-clipboard@0.5.2
	x11-dl@2.18.5
	xcb@0.9.0
	xcursor@0.3.3
	xdg@2.2.0
	xi-unicode@0.2.1
	xi-unicode@0.3.0
	xml-rs@0.8.3
	yasna@0.4.0
"

inherit desktop cargo xdg

DESCRIPTION="ALVR is an open source remote VR display for the Oculus Go/Quest"
HOMEPAGE="https://github.com/alvr-org/ALVR"
SRC_URI="https://github.com/alvr-org/ALVR/archive/refs/tags/v${PV}.tar.gz -> ${P}.gh.tar.gz"
SRC_URI+=" ${CARGO_CRATE_URIS} "

S="${WORKDIR}/${P^^}"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64"

IUSE="+client +server vaapi vulkan x264 x265"

RDEPEND="
	>=media-video/ffmpeg-4.3[encode,vulkan?,x264?,x265?]
	vaapi? ( media-video/ffmpeg[libdrm,vaapi] )
	sys-libs/libunwind
	www-client/chromium
"

DEPEND="${RDEPEND}
	vulkan? ( dev-util/vulkan-headers )
"

BDEPEND="${RDEPEND}
	virtual/pkgconfig
	client? ( media-gfx/imagemagick )
"

PATCHES=( "${FILESDIR}/${P}-build.patch" )

src_configure() {
	local ECARGO_EXTRA_ARGS="
		-p vrcompositor-wrapper
		$(usex server "-p alvr_server" "" )
		$(usex client "-p alvr_client -p alvr_launcher" "" )
		$(usex vulkan "-p alvr_vulkan-layer" "" )
		"
	cargo_src_configure
}

src_install() {
	if use client; then
		dobin target/release/alvr_launcher
		dolib.so target/release/libalvr_client.so
		domenu packaging/freedesktop/alvr.desktop
		for size in {16,32,48,64,128,256}; do
			convert alvr/launcher/res/launcher.ico \
				-thumbnail ${size} -alpha on -background none -flatten \
				${PN}-${size}.png || die
			newicon -s ${size} ${PN}-${size}.png ${PN}.png
		done
	fi

	if use server; then
		#dolib.so target/release/libalvr_server.so

		insinto /usr/lib/steamvr/alvr/bin/linux64/
		newins target/release/libalvr_server.so driver_alvr_server.so

		insinto /usr/lib/steamvr/alvr/
		doins alvr/xtask/resources/driver.vrdrivermanifest

	fi

	if use vulkan; then
		dolib.so target/release/libalvr_vulkan_layer.so
		insinto /usr/share/vulkan/explicit_layer.d/
		doins alvr/vulkan-layer/layer/alvr_x86_64.json
	fi

	insinto /usr/lib/alvr
	doins target/release/vrcompositor-wrapper
	doins packaging/firewall/alvr_fw_config.sh

	insinto /usr/share/${PN}/selinux/
	doins packaging/selinux/*

	insinto /usr/share/${PN}/presets/
	doins alvr/xtask/resources/presets/*

	insinto /usr/share/${PN}/
	doins -r alvr/dashboard

	insinto /usr/lib/firewalld/services/
	doins packaging/firewall/alvr-firewalld.xml

	insinto /etc/ufw/applications.d/
	doins packaging/firewall/ufw-alvr
}
