EAPI=8

SLOT="0"
LICENSE="GPL-3"

SRC_URI="https://gitlab.com/stuko/${PN}/-/archive/v${PV}/${PN}-v${PV}.tar.bz2"
KEYWORDS="~amd64"

S="${WORKDIR}/${PN}-v${PV}"

inherit cmake

DEPEND="
  dev-qt/qtbase:6[gui]
  dev-qt/qtsvg:6
  sci-libs/hdf5
  dev-libs/boost
  sci-libs/netcdf
  media-video/ffmpeg
  virtual/opengl
"

src_configure() {
  cmake_src_configure
}

