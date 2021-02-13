# Copyright 1999-2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI="7"
HOMEPAGE="https://source.puri.sm/Librem5/feedbackd"
DESCRIPTION="Feedbackd provides a DBus daemon (feedbackd) to act on events to provide
haptic, visual and audio feedback"
SRC_URI="https://source.puri.sm/Librem5/feedbackd/-/archive/v0.0.0+git20210125/feedbackd-v0.0.0+git20210125.tar.gz"
KEYWORDS="~amd64 ~x86"
SE="GPL-3"
SLOT="0"
RDEPEND="${DEPEND}"
DEPEND="media-libs/gsound"

inherit meson

S=""${WORKDIR}"/feedbackd-v0.0.0+git"${PV}""
src_configure() {
        export VAPIGEN=/usr/bin/vapigen-0.48
        meson_src_configure
}
