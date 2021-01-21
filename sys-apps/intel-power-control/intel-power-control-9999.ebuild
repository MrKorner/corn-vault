# Copyright 1999-2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI="7"
HOMEPAGE="https://github.com/jmechnich/intel-power-control"
DESCRIPTION="GPU power management for Intel hardware on Linux"

if [[ "${PV}" == "9999" ]]
then
	inherit git-r3
	EGIT_REPO_URI="https://github.com/jmechnich/intel-power-control"
	EGIT_BRANCH="master"
else
	SRC_URI="https://github.com/jmechnich/intel-power-control.git"
	KEYWORDS="~amd64 ~x86"
fi

LICENSE="all-rights-reserved"
SLOT="0"
RDEPEND="${DEPEND}"
DEPEND="dev-python/sip
	dev-qt/qtcore"

src_compile() {
	emake -j1
}

src_install() {
	mkdir -p "${D}/usr/bin" || die
	emake PREFIX="${D}" BINDIR="${D}/usr/bin" DATA="intel-power-control.png" install
	domenu files/intel-power-control.desktop
	newicon intel-power-control.png
}
