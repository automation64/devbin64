#!/usr/bin/env bash

at64root="${HOME}/at64"
install_target="${at64root}/devbin64"
export DEV_BOOTSTRAP_PATH_ROOT="$install_target"

mkdir -p \
  "$install_target" \
  "${install_target}/bin" \
  "$TEST_TARGET" &&
  cp -r "${DEV_ENV_BASH_CONTAINER_PATH_SRC}/lib" "$install_target" &&
  cp "${DEV_ENV_BASH_CONTAINER_PATH_SRC}/lib/devbin64/bin/dev-bootstrap" "${install_target}/bin" &&
  cd "$TEST_TARGET" &&
  "${install_target}/bin/dev-bootstrap" > /dev/null 2>&1
