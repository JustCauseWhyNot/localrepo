# Copyright 1999-2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit cmake-multilib multilib

DESCRIPTION="Reader for AES SOFA files to get better HRTFs"
HOMEPAGE="https://github.com/hoene/libmysofa"
if [[ ${PV} == 9999 ]] ; then
	EGIT_REPO_URI="https://github.com/hoene/libmysofa.git"
	inherit git-r3
	else
	SRC_URI="https://github.com/hoene/libmysofa/archive/v${PV}.tar.gz -> ${P}.tar.gz"
fi

LICENSE="BSD"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="static-libs"

RDEPEND="
    sys-libs/zlib[${MULTILIB_USEDEP}]
"
DEPEND="${RDEPEND}"

src_configure() {
    local mycmakeargs=(
        -DBUILD_TESTS=OFF
        -DBUILD_STATIC_LIBS=$(multilib_native_usex static-libs ON OFF)
    )
    cmake-multilib_src_configure
}
