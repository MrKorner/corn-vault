# Copyright 1999-2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI="7"

HOMEPAGE="https://github.com/paolostivanin/OTPClient"
DESCRIPTION="Highly secure and easy to use GTK+ software for two-factor authentication that supports both Time-based One-time Passwords (TOTP) and HMAC-Based One-Time Passwords (HOTP)."
SLOT="0"
LICENSE="GPL-3"
SRC_URI="https://github.com/paolostivanin/OTPClient/archive/v2.4.2.tar.gz"
KEYWORDS="~amd64 ~x86"
inherit cmake desktop xdg
DEPEND="
	dev-libs/jansson
	x11-libs/gtk+
	dev-libs/libgcrypt
	dev-libs/libcotp
	dev-libs/libzip
	media-libs/libpng
	media-gfx/zbar"	

S=""${WORKDIR}"/OTPClient-"${PV}""

src_prepare() {
cmake_src_prepare
}
