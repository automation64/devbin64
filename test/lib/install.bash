#!/usr/bin/env bash

at64root="${HOME}/at64"
install_target="${at64root}/devbin64"
source_lib=''
export DEV_BOOTSTRAP_PATH_ROOT="$install_target"

if [[ -v DEV_TEST_BASH_CONTAINER_ENVIRONMENT && -n "$DEV_TEST_BASH_CONTAINER_ENVIRONMENT" && -d "$DEV_TEST_BASH_CONTAINER_ENVIRONMENT" ]]; then
  source_lib="$DEV_ENV_BASH_CONTAINER_PATH_SRC"
else
  source_lib='src'
fi

mkdir -p \
  "$install_target" \
  "${install_target}/bin" \
  "$TEST_TARGET" &&
  cp -r "${source_lib}/lib" "$install_target" &&
  cp "${source_lib}/lib/devbin64/bin/dev-bootstrap" "${install_target}/bin" &&
  cd "$TEST_TARGET" &&
  "${install_target}/bin/dev-bootstrap" >/dev/null 2>&1
