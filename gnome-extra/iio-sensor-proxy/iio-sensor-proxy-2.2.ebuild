# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$
# Created By Luciano Joublanc

EAPI=6

DESCRIPTION="IIO Sensors to D-Bus Proxy"
HOMEPAGE="https://github.com/hadess/iio-sensor-proxy"
SRC_URI="https://github.com/hadess/iio-sensor-proxy/releases/download/${PV}/${P}.tar.xz"

LICENSE="GPL-3"
SLOT="0"
KEYWORDS="~amd64"
IUSE=""

DEPEND=">=gnome-base/gnome-3.18
	dev-libs/libgudev
	sys-apps/systemd"
RDEPEND="${DEPEND}"
