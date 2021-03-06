# Copyright 2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

DESCRIPTION="A terminal for a more modern age"
HOMEPAGE="https://eugeny.github.io/terminus/"
SRC_URI="https://github.com/Eugeny/terminus/releases/download/v1.0.134/terminus-1.0.134-linux.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64"

inherit desktop xdg

S=""${WORKDIR}"/"${P}"-linux"

DEPEND="net-print/cups"

src_install() {
        insinto /opt/"${PN}"
        doins -r "${S}"/*
        dosym /opt/"${PN}"/terminus /usr/bin/terminus
        fperms +x /opt/"${PN}"/terminus
}
