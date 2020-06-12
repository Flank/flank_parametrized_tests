#!/usr/bin/env bash

echo "$(basename "$0")" "$@"

set -euxo pipefail

java -jar ../flank-parameterized-test-fix.jar android run \
  -c=disable-sharding-false.yml \
  --dump-shards
