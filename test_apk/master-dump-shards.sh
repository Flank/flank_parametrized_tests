#!/usr/bin/env bash

echo "$(basename "$0")" "$@"

set -euxo pipefail

java -jar ../flank-master.jar android run \
  -c=enable-sharding.yml \
  --dump-shards
