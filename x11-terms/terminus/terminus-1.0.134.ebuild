# Copyright 2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

DESCRIPTION="A terminal for a more modern age"
HOMEPAGE="https://eugeny.github.io/terminus/"
SRC_URI="https://github.com/Eugeny/terminus/releases/download/v1.0.134/terminus-1.0.134-linux.tar.gz
https://icons.iconarchive.com/icons/papirus-team/papirus-apps/512/terminus-icon.png -> terminus-512.png
https://icons.iconarchive.com/icons/papirus-team/papirus-apps/128/terminus-icon.png -> terminus-128.png
https://icons.iconarchive.com/icons/papirus-team/papirus-apps/96/terminus-icon.png -> terminus-96.png
https://icons.iconarchive.com/icons/papirus-team/papirus-apps/72/terminus-icon.png -> terminus-72.png
https://icons.iconarchive.com/icons/papirus-team/papirus-apps/64/terminus-icon.png -> terminus-64.png
https://icons.iconarchive.com/icons/papirus-team/papirus-apps/48/terminus-icon.png -> terminus-48.png
https://icons.iconarchive.com/icons/papirus-team/papirus-apps/32/terminus-icon.png -> terminus-32.png
https://icons.iconarchive.com/icons/papirus-team/papirus-apps/24/terminus-icon.png -> terminus-24.png
https://icons.iconarchive.com/icons/papirus-team/papirus-apps/16/terminus-icon.png -> terminus-16.png
"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64"

inherit desktop xdg

S=""${WORKDIR}"/"${P}"-linux"

src_install() {
        insinto /opt/"${PN}"
        doins -r "${S}"/*
        dosym /opt/"${PN}"/terminus /usr/bin/terminus
        fperms +x /opt/"${PN}"/terminus
        make_desktop_entry /opt/terminus/terminus terminus
        for i in {16,24,32,48,64,72,96,128,512}; do
                doicon -s "${i}" "${DISTDIR}"/terminus-"${i}".png
        done
}
