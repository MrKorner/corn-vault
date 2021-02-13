# Copyright 1999-2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI="7"
HOMEPAGE="https://source.puri.sm/Librem5/phoc"
DESCRIPTION="Wayland compositor for mobile phones like the Librem 5"
SRC_URI="https://source.puri.sm/Librem5/phoc/-/archive/v0.6.0/phoc-v0.6.0.tar.gz"
KEYWORDS="~amd64 ~x86"
SE="GPL-3"
SLOT="0"
RDEPEND="${DEPEND}"
DEPEND="gui-libs/wlroots"

inherit meson

S=""${WORKDIR}"/phoc-v"${PV}""

src_configure() {
        meson_src_configure
}
