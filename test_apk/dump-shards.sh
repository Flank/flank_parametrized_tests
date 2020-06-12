#!/usr/bin/env bash

echo "$(basename "$0")" "$@"

set -euxo pipefail

java -jar "$1" android run \
  -c=enable-sharding.yml \
  --dump-shards
