# Copyright 1999-2024 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8
NEED_EMACS=25.1

inherit elisp

DESCRIPTION="Soothing pastel theme for Emacs"
HOMEPAGE="https://github.com/catppuccin/emacs"
SRC_URI="https://github.com/catppuccin/emacs/archive/refs/tags/V${PV/_/-}.tar.gz -> ${P}.tar.gz"

S="${WORKDIR}/emacs-${PV/_/-}"

LICENSE="GPL-3+"
SLOT="0"
KEYWORDS="~amd64"

BDEPENDS="app-emacs/autothemer"

SITEFILE="50${PN}-gentoo.el"
