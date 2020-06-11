#!/usr/bin/env bash

set -euxo pipefail

java -jar ../flank-parameterized-test-fix.jar android run \
  -c="$1"
