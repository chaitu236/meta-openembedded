inherit pypi setuptools3
require python-cryptography.inc

LDSHARED += "-pthread"

SRC_URI = "${PYPI_SRC_URI} \
           file://run-ptest \
           file://0001-setup.py-Changes-to-get-build-working-without-rust-a.patch \
           "

do_compile_prepend() {
    export CRYPTOGRAPHY_DONT_BUILD_RUST=1
}

do_install_prepend() {
    export CRYPTOGRAPHY_DONT_BUILD_RUST=1
}
