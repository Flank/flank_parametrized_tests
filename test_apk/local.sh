#!/usr/bin/env bash

echo "$(basename "$0")" "$@"

set -euxo pipefail

adb install app-multiple-success-debug.apk

adb install app-multiple-success-debug-androidTest.apk

adb shell am instrument -r -w -e \
    package com.example.test_app \
    com.example.test_app.test/androidx.test.runner.AndroidJUnitRunner
