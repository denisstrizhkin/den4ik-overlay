EAPI=8

DISTUTILS_USE_PEP517=setuptools
PYTHON_COMPAT=( python3_{11..13} )
inherit distutils-r1

DESCRIPTION="cexprtk is a cython wrapper around C++ ExprTk"
HOMEPAGE="https://github.com/mjdrushton/cexprtk"

inherit git-r3
EGIT_REPO_URI="https://github.com/mjdrushton/cexprtk.git"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64"
