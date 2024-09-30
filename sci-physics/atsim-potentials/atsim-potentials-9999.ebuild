EAPI=8

DISTUTILS_USE_PEP517=setuptools
PYTHON_COMPAT=( python3_{11..13} )
inherit distutils-r1

DESCRIPTION="Tools for working with atom method potential models"
HOMEPAGE="https://github.com/mjdrushton/atsim-potentials"

inherit git-r3
EGIT_REPO_URI="https://github.com/mjdrushton/atsim-potentials.git"

LICENSE="GPL-3+"
SLOT="0"
KEYWORDS="~amd64"

DEPEND="
	dev-python/cexprtk
	dev-python/openpyxl
	dev-python/pyparsing
	dev-python/scipy
	dev-python/wrapt
"

python_prepare_all() {
	rm -rf "${S}"/tests || die
	distutils-r1_python_prepare_all
}
