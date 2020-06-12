#!/usr/bin/env bash

set -euxo pipefail

java -jar ../flank-master.jar android run \
  -c=disable-sharding-false.yml \
  --dump-shards
