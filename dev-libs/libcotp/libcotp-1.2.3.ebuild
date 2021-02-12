# Copyright 1999-2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI="7"

HOMEPAGE="https://github.com/paolostivanin/libcotp"
DESCRIPTION="C library that generates TOTP and HOTP according to RFC-6238"
SLOT="0"
LICENSE="GPL-3"
SRC_URI="https://github.com/paolostivanin/libcotp/archive/v1.2.3.tar.gz"
KEYWORDS="~amd64 ~x86"
inherit cmake
DEPEND="
	dev-libs/libbaseencode
    dev-libs/libgcrypt"	

src_prepare() {
cmake_src_prepare
}
