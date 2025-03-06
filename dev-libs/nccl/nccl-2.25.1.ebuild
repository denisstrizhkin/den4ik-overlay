EAPI=8

inherit cuda

DESCRIPTION="Optimized primitives for collective multi-GPU communication"
HOMEPAGE="https://developer.nvidia.com/nccl"
SRC_URI="https://github.com/NVIDIA/nccl/archive/refs/tags/v${PV}-1.tar.gz -> ${P}.tar.gz"
LICENSE="BSD"
SLOT="0"
KEYWORDS="~amd64"

RDEPEND="
    =dev-util/nvidia-cuda-toolkit-12*
"
DEPEND="${RDEPEND}"

S="${WORKDIR}/nccl-${PV}-1"

src_prepare() {
    cuda_sanitize
    default
}

src_configure() {
    export NVCC_GENCODE="-gencode=arch=compute_75,code=sm_75 \
        -gencode=arch=compute_80,code=sm_80"
        # -gencode=arch=compute_86,code=sm_86 \
        # -gencode=arch=compute_87,code=sm_87 \
        # -gencode=arch=compute_89,code=sm_89 \
        # -gencode=arch=compute_90,code=sm_90 \
        # -gencode=arch=compute_90,code=compute_90"
    export CUDA_HOME=/opt/cuda
}

src_install() {
    emake PREFIX="${ED}/usr" install
    mv "${ED}/usr/lib" "${ED}/usr/$(get_libdir)"
}
