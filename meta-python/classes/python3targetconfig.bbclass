#
# Copyright OpenEmbedded Contributors
#
# SPDX-License-Identifier: MIT
#

inherit python3native

EXTRA_PYTHON_DEPENDS ?= ""
EXTRA_PYTHON_DEPENDS_class-target = "python3"
DEPENDS_append = " ${EXTRA_PYTHON_DEPENDS}"

setup_target_config() {
        export _PYTHON_SYSCONFIGDATA_NAME="_sysconfigdata"
        export PYTHONPATH=${STAGING_LIBDIR}/python-sysconfigdata:$PYTHONPATH
        export PATH=${STAGING_EXECPREFIXDIR}/python-target-config/:$PATH
}

do_configure_prepend_class-target() {
        setup_target_config
}

do_compile_prepend_class-target() {
        setup_target_config
}

do_install_prepend_class-target() {
        setup_target_config
}

do_configure_prepend_class-nativesdk() {
        setup_target_config
}

do_compile_prepend_class-nativesdk() {
        setup_target_config
}

do_install_prepend_class-nativesdk() {
        setup_target_config
}
