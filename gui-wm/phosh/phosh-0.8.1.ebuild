# Copyright 1999-2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI="7"
HOMEPAGE="https://source.puri.sm/Librem5/phosh"
DESCRIPTION="A pure Wayland shell prototype for GNOME on mobile devices"

# Create variable so that dont need to constantly type out this one string, makes easier to bump as well
GVC_COMMIT="ae1a34aafce7026b8c0f65a43c9192d756fe1057"

SRC_URI="https://source.puri.sm/Librem5/phosh/-/archive/v0.8.1/phosh-v0.8.1.tar.gz
        https://gitlab.gnome.org/GNOME/libgnome-volume-control/-/archive/"${GVC_COMMIT}"/libgnome-volume-control-"${GVC_COMMIT}".tar.gz -> libgnome-volume-control-"${GVC_COMMIT}".tar.gz"
KEYWORDS="~amd64 ~x86"
LICENSE="GPL-3"
SLOT="0"
RDEPEND="${DEPEND}"
DEPEND="gui-libs/wlroots
        gui-wm/phoc
        gui-libs/libhandy
        dev-libs/feedbackd"

inherit meson

S=""${WORKDIR}"/phosh-v"${PV}""
 
src_prepare() {
    rm -r ${S}/subprojects/gvc || die
    mv ${WORKDIR}/libgnome-volume-control-${GVC_COMMIT} ${S}/subprojects/gvc || die
    eapply_user
}


