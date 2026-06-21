#!/usr/bin/env bash

[[ -n "$DEV_CICD_DEBUG_BASH" ]] && set -x

declare at64root="/tmp/at64"

[[ -z "$HOME" ]] && exit 1

export BL64_LIB_CICD="YES"
export TEST_TARGET="/tmp/test-repo"
export TEST_INSTALL_TARGET="${at64root}/devbin64"
export DEV_BOOTSTRAP_PATH_ROOT="$TEST_INSTALL_TARGET"
export TEST_SOURCE_LIB='src'

[[ -n "$DEV_CICD_DEBUG_BASH" ]] && set +x
:
