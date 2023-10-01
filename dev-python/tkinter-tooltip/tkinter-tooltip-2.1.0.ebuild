# Copyright 2023 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{9..11} )
DISTUTILS_USE_PEP517="setuptools"
PYTHON_REQ_USE="tk"
PYPI_NO_NORMALIZE=1
inherit distutils-r1 pypi

DESCRIPTION="This is a simple tooltip/pop-up implementation for tkinter widgets."
HOMEPAGE="https://gnikit.github.io/tkinter-tooltip"
#SRC_URI="$(pypi_sdist_url --no-normalize)" # filename has - not _
LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64 ~arm64"
IUSE="" # todo add doc and doc deps ( sphinx stuff)
RESTRICT="mirror" #overlay, not goign to be mirrored
DEPEND=""
RDEPEND="( ${DEPEND}
        dev-python/importlib_metadata[${PYTHON_USEDEP}]
        dev-python/pyyaml[${PYTHON_USEDEP}] )"
BDEPEND=""
#sphinx-argparse and sphinx-sitemap are in guru
#sphinx_design and sphinx-copybutton are in benzene-overlay
distutils_enable_sphinx docs \
        dev-python/sphinx-argparse \
        dev-python/sphinx-autodoc-typehints \
        dev-python/sphinx_design \
        dev-python/sphinx-copybutton \
        dev-python/furo \
        dev-python/myst-parser \
        dev-python/sphinx-sitemap

# this automatically adds the doc useflag and the given packages as dependencies of it
