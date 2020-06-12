#!/usr/bin/env bash

set -euxo pipefail

java -jar "$1" firebase test android run -c="$2"
