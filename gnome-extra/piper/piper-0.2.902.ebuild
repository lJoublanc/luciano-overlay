# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

PYTHON_COMPAT=( python3_{4,5,6,7} )

inherit meson python-single-r1

DESCRIPTION="GTK+ application to configure gaming mice"
HOMEPAGE="https://github.com/libratbag/piper"
SRC_URI="https://github.com/libratbag/${PN}/archive/${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="GPLv2"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

DEPEND="
    dev-python/pygobject:3
    >=dev-libs/libratbag-0.9.903
	dev-python/python-evdev
"
RDEPEND="$DEPEND
    $PYTHON_DEPS
"

REQUIRED_USE="${PYTHON_REQUIRED_USE}"
