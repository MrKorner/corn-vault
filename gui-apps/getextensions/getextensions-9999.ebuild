# Copyright 1999-2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI="7"
HOMEPAGE="https://github.com/ekistece/GetExtensions"
DESCRIPTION="Python GTK app to install extensions from extensions.gnome.org"
PYTHON_COMPAT=( python3_9 )
if [[ "${PV}" == "9999" ]]
then
	inherit git-r3 xdg desktop distutils-r1
	EGIT_REPO_URI="https://github.com/ekistece/GetExtensions"
	EGIT_BRANCH="master"
else
	SRC_URI="https://github.com/ekistece/GetExtensions.git"
    KEYWORDS="~amd64 ~arm ~arm64 ~x86"
fi

LICENSE="all-rights-reserved"
SLOT="0"
RDEPEND="${DEPEND}"
DEPEND=""
