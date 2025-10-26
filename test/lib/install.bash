#!/usr/bin/env bash

mkdir -p \
  "$TEST_INSTALL_TARGET" \
  "${TEST_INSTALL_TARGET}/bin" \
  "$TEST_TARGET" &&
  cp -r "${TEST_SOURCE_LIB}/lib" "$TEST_INSTALL_TARGET" &&
  cp "${TEST_SOURCE_LIB}/lib/devbin64/bin/dev-bootstrap" "${TEST_INSTALL_TARGET}/bin" &&
  cd "$TEST_TARGET" &&
  "${TEST_INSTALL_TARGET}/bin/dev-bootstrap" #>/dev/null
