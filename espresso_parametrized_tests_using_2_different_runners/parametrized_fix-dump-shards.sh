#!/usr/bin/env bash

set -euxo pipefail

java -jar ../flank-parametrized-test-fix.jar android run \
  -c=flank.yml \
  --dump-shards
