# Copyright 2024 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

DESCRIPTION="Screen recorder with minimal overhead."
HOMEPAGE="https://git.dec05eba.com/gpu-screen-recorder/about/"
EGIT_REPO_URI="https://repo.dec05eba.com/gpu-screen-recorder"
inherit git-r3

LICENSE=""
SLOT="0"
KEYWORDS="~amd64"

DEPEND="
	dev-libs/wayland
	media-libs/libva
	media-libs/libglvnd
	media-libs/libpulse
	media-video/ffmpeg
	sys-libs/libcap
	x11-drivers/nvidia-drivers
	x11-libs/libdrm
	x11-libs/libX11"
RDEPEND="${DEPEND}"
BDEPEND=""
