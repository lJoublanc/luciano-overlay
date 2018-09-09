# Copyright 1999-2018 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

# 3.5 not supported due to obsolete httplib
DISTUTILS_SINGLE_IMPL=true
PYTHON_COMPAT=( python2_7 )

inherit distutils-r1

DESCRIPTION="A complete FUSE adapter for Google Drive"
HOMEPAGE="https://github.com/dsoprea/GDriveFS"
SRC_URI="https://github.com/dsoprea/GDriveFS/archive/${PV}.tar.gz"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="-*"
IUSE="python"

DEPEND=">=dev-python/google-api-python-client-1.2[${PYTHON_USEDEP}]
	>=dev-python/six-1.7.3[${PYTHON_USEDEP}]
	>=dev-python/fusepy-2.0.2[${PYTHON_USEDEP}]
	>=dev-python/greenlet-0.4.2[${PYTHON_USEDEP}]
	>=dev-python/python-dateutil-2.2[${PYTHON_USEDEP}]"
RDEPEND="${DEPEND}"

pkg_postinst() {
	ln -sf "/usr/bin/gdfs" "/sbin/mount.gdfs" || die
}
