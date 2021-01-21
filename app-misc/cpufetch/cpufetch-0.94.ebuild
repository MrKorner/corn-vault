# Copyright 1999-2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

HOMEPAGE="https://github.com/Dr-Noob/cpufetch"
DESCRIPTION="Simplistic yet fancy CPU architecture fetching tool"
SLOT="0"
LICENSE="MIT"
SRC_URI="https://github.com/Dr-Noob/cpufetch/archive/v0.94.tar.gz"
KEYWORDS="~amd64 ~x86"

src_install() {
	emake install
}
