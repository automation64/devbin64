#!/usr/bin/env bash

[[ -n "$DEV_CICD_DEBUG_BASH" ]] && set -x

if [[ "$(uname -s)" == 'Linux' ]]; then
  if [[ "$DEV_BASE_RUNTIME_CURRENT" != 'CONTAINER' ]]; then
    echo 'error: Test must be executed inside a container'
    exit 1
  fi
else
  if [[ "$DEV_BASE_RUNTIME_CURRENT" != 'VM' ]]; then
    echo 'error: Test must be executed inside a CICD runner'
    exit 1
  fi
fi

[[ -n "$DEV_CICD_DEBUG_BASH" ]] && set +x
:
