#!/usr/bin/env bash

[[ -n "$DEV_CICD_DEBUG_BASH" ]] && set -x

unset DEV_VERBOSE
unset DEV_VERBOSE_TYPE
unset DEV_VERBOSE_LEVEL
unset DEV_PROFILE

[[ -n "$DEV_CICD_DEBUG_BASH" ]] && set +x
:
