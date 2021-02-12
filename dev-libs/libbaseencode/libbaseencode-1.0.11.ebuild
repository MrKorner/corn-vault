# Copyright 1999-2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI="7"

HOMEPAGE="https://github.com/paolostivanin/libbaseencode"
DESCRIPTION="Library written in C for encoding and decoding data using base32 or base64 according to RFC-4648"
SLOT="0"
LICENSE="APACHE-2.0"
SRC_URI="https://github.com/paolostivanin/libbaseencode/archive/v1.0.11.tar.gz"
KEYWORDS="~amd64 ~x86"
inherit cmake
DEPEND=""	
src_prepare() {
cmake_src_prepare
}
