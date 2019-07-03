# Copyright 2019 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

GITPVR="v${PVR/_rc/-RC}"

DESCRIPTION="scalafmt native GraalVM image"
HOMEPAGE="https://scalameta.org/scalafmt/ https://github.com/mroth/scalafmt-native/"
SRC_URI="amd64? ( https://github.com/mroth/scalafmt-native/releases/download/${GITPVR}/scalafmt-native_linux-amd64.tgz -> ${PN}-${GITPVR}_linux-amd64.tgz )"

S="${WORKDIR}"

LICENSE="Apache-2.0"
SLOT="0"
KEYWORDS="~amd64"
IUSE=""

DEPEND=""
RDEPEND="${DEPEND}"
BDEPEND=""

src_install() {
	dobin scalafmt-native
}
