#!/usr/bin/env bash

[[ -n "$DEV_CICD_DEBUG_BASH" ]] && set -x

if [[ -d "$TEST_INSTALL_TARGET" ]]; then
  rm -Rf "$TEST_INSTALL_TARGET"
fi

if [[ -d "$TEST_TARGET" ]]; then
  rm -Rf "$TEST_TARGET"
fi

# Install DevBin64 in test environment
mkdir -p \
  "$TEST_INSTALL_TARGET" \
  "${TEST_INSTALL_TARGET}/bin" \
  "$TEST_TARGET" &&
  cp -r "${TEST_SOURCE_LIB}/lib" "$TEST_INSTALL_TARGET" &&
  cp "${TEST_SOURCE_LIB}/lib/devbin64/bin/dev-bootstrap" "${TEST_INSTALL_TARGET}/bin" ||
  exit $?

[[ -n "$DEV_CICD_DEBUG_BASH" ]] && set +x

cd "$TEST_TARGET" &&
  "${TEST_INSTALL_TARGET}/bin/dev-bootstrap"
