
if [[ "$DEV_TEST_BASH_CONTAINER_ENVIRONMENT" != 'ON' ]]; then
  echo 'error: Test must be executed inside a container'
  exit 1
fi
