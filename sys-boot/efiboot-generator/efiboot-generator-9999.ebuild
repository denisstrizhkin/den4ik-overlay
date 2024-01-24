EAPI=8

DISTUTILS_USE_PEP517=hatchling
PYTHON_COMPAT=( python3_{11..12} )
inherit distutils-r1

DESCRIPTION="Automate EFI entries generation with efibootmgr"
HOMEPAGE="https://github.com/denisstrizhkin/efiboot-generator"

inherit git-r3
EGIT_REPO_URI="https://github.com/denisstrizhkin/${PN^}.git"

LICENSE="GPL-3+"
SLOT="0"
KEYWORDS="~amd64"

RDEPEND="sys-boot/efibootmgr"

src_install() {
	distutils-r1_src_install
}
