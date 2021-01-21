# Copyright 1999-2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI="7"
KEYWORDS="~amd64 ~x86"
HOMEPAGE="https://github.com/jmechnich/intel-power-control"
DESCRIPTION="GPU power management for Intel hardware on Linux"
KEYWORDS="~amd64 ~x86"
SRC_URI="https://github.com/jmechnich/intel-power-control.git"
LICENSE="GPL-2+"
SLOT="0"
RDEPEND="${DEPEND}"
DEPEND="dev-python/sip
	dev-qt/qtcore"

src_compile() {
	use sparc && filter-flags -fomit-frame-pointer
	append-ldflags -Wl,-z,now

	emake
}

src_install() {
	emake install
	domenu files/intel-power-control.desktop
	newicon intel-power-control.png
}
