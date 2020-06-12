#!/usr/bin/env bash

echo "$(basename "$0")" "$@"

set -euxo pipefail

gcloud beta firebase test android run \
  --type instrumentation \
  --app app-multiple-success-debug.apk \
  --test app-multiple-success-debug-androidTest.apk \
  --device model=NexusLowRes,version=28,locale=en,orientation=portrait \
  --test-targets-for-shard "class com.example.test_app.parametrized.EspressoParametrizedClassTestParameterized" \
  --test-targets-for-shard "class com.example.test_app.parametrized.EspressoParametrizedClassParameterizedNamed" \
  --test-targets-for-shard "class com.example.test_app.parametrized.EspressoParametrizedMethodTestJUnitParamsRunner" \
  --use-orchestrator
