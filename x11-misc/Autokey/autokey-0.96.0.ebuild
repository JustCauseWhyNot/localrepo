# Copyright 2023 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

DESCRIPTION="AutoKey, a desktop automation utility for Linux and X11, formerly hosted on Google, has been updated to run on Python 3."
HOMEPAGE="https://github.com/autokey/autokey"
SRC_URI="https://github.com/autokey/autokey/releases/download/${PV}/${P}.tar.gz"

LICENSE="GPL-3.0 license"
SLOT="0"
KEYWORDS="~amd64"

DEPEND="dbus-python pyinotify python-xlib qscintilla-python wmctrl"
RDEPEND="${DEPEND}"
BDEPEND=""
