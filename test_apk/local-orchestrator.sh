#!/usr/bin/env bash

echo "$(basename "$0")" "$@"

set -euxo pipefail

adb install -r orchestrator-1.3.0-rc01.apk

adb install -r test-services-1.3.0-rc01.apk

adb install app-multiple-success-debug.apk

adb install app-multiple-success-debug-androidTest.apk

# shellcheck disable=SC2016
# shellcheck disable=SC1004
adb shell 'CLASSPATH=$(pm path androidx.test.services) app_process / \
  androidx.test.services.shellexecutor.ShellMain am instrument -w -e \
  package com.example.test_app \
  com.example.test_app.test/androidx.test.runner.AndroidJUnitRunner \
  androidx.test.orchestrator/.AndroidTestOrchestrator'

#  class com.example.test_app.ParameterizedTest#shouldHopefullyPass \
