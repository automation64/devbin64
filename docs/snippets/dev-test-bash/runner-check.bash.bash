
if [[ "$DEV_TEST_BASH_RUNNER_ENVIRONMENT" != 'ON' ]]; then
  echo 'error: Test must be executed inside a CICD runner'
  exit 1
fi
