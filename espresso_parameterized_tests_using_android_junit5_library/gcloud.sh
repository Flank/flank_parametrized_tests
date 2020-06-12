#!/usr/bin/env bash

set -euxo pipefail

gcloud beta firebase test android run \
  --type instrumentation \
  --app app-multiple-success-debug.apk \
  --test app-multiple-success-debug-androidTest.apk \
  --device model=NexusLowRes,version=28,locale=en,orientation=portrait \
