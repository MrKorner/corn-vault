# Copyright 1999-2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI="7"

HOMEPAGE="https://github.com/juzzlin/Heimer"
DESCRIPTION="Heimer is a desktop application for creating mind maps and other suitable diagrams"
SLOT="0"
LICENSE="GPL-3"
SRC_URI="https://github.com/juzzlin/Heimer/archive/2.2.0.tar.gz"
KEYWORDS="~amd64 ~x86"
inherit cmake desktop xdg
DEPEND="
	dev-qt/qtcore
	dev-qt/linguist-tools
	dev-qt/qtsvg"	

S=""${WORKDIR}"/Heimer-"${PV}""

src_prepare() {
cmake_src_prepare
}

pkg_postinst() {
	xdg_desktop_database_update
	xdg_icon_cache_update
}

pkg_postrm() {
	xdg_desktop_database_update
	xdg_icon_cache_update
}
