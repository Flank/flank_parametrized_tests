#!/usr/bin/env bash

set -euxo pipefail

java -jar ../flank-master.jar firebase test android run -c="$1"
