#!/usr/bin/env bash

set -euxo pipefail

java -jar ../flank-parametrized-test-fix.jar firebase test android run \
  -c=flank.yml \
  --dump-shards
