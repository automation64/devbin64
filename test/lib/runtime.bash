#!/usr/bin/env bash

at64root="${HOME}/at64"
export BL64_LIB_CICD="YES"
export TEST_TARGET="${HOME}/repo"
export TEST_INSTALL_TARGET="${at64root}/devbin64"
export DEV_BOOTSTRAP_PATH_ROOT="$TEST_INSTALL_TARGET"
export TEST_SOURCE_LIB=''

if [[ "$(uname -s)" == 'Linux' ]]; then
  if [[ "$DEV_TEST_BASH_CONTAINER_ENVIRONMENT" != 'ON' ]]; then
    echo 'error: Test must be executed inside a container'
    exit 1
  fi
else
  if [[ "$DEV_TEST_BASH_RUNNER_ENVIRONMENT" != 'ON' ]]; then
    echo 'error: Test must be executed inside a CICD runner'
    exit 1
  fi
fi

if [[ -n "$DEV_TEST_BASH_CONTAINER_ENVIRONMENT" && -d "$DEV_TEST_BASH_CONTAINER_ENVIRONMENT" ]]; then
  TEST_SOURCE_LIB="$DEV_ENV_BASH_CONTAINER_PATH_SRC"
else
  TEST_SOURCE_LIB='src'
fi
