# Copyright 1999-2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI="7"
HOMEPAGE="https://github.com/nullgemm/ly"
DESCRIPTION="Ly - a TUI display manager"

if [[ "${PV}" == "9999" ]]
then
	EGIT_REPO_URI="https://github.com/nullgemm/ly"
	EGIT_BRANCH="master"
else
	SRC_URI="https://github.com/nullgemm/ly/archive/v0.5.0.zip"
	KEYWORDS="~amd64 ~x86"
fi

LICENSE="all-rights-reserved"
SLOT="0"
RDEPEND="${DEPEND}"
DEPEND=""

src_install() {
	mkdir -p "${D}/usr/bin" || die
    make github
	emake PREFIX="${D}" BINDIR="${D}/usr/bin"  install
}
