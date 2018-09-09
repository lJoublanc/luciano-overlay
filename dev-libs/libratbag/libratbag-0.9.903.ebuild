# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

PYTHON_COMPAT=( python3_{4,5,6,7} )

inherit meson udev systemd python-single-r1

DESCRIPTION="Library to configure gaming mice"
HOMEPAGE="https://github.com/libratbag/libratbag"
SRC_URI="https://github.com/libratbag/${PN}/archive/v${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="doc test systemd"

DEPEND="
	virtual/pkgconfig
	doc? ( app-doc/doxygen )
"
RDEPEND="
    ${PYTHON_DEPS}
	dev-libs/libevdev
	virtual/libudev
"
REQUIRED_USE="${PYTHON_REQUIRED_USE}"

src_prepare() {
	default

	sed '/default:/d' -i meson_options.txt || die
}

src_configure() {
	local emesonargs=(
		-Dudev-dir=$(get_udevdir)
		-Dtests=$(usex test true false)
		-Dsystemd-unit-dir=$(systemd_get_systemunitdir)
		#-Ddbus-root-dir=???
		-Ddocumentation=$(usex doc true false)
		#-Ddbus-group=???
		-Dsystemd=$(usex systemd true false)
		#TODO: elogind not tested - I use systemd.
		-Dlogind-provider=$(usex systemd 'systemd' 'elogind')
	)
	meson_src_configure
}
