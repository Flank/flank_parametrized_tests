#!/usr/bin/env bash

set -euxo pipefail

mkdir report || true

# gcloud

./gcloud.sh &> report/gcloud &

./gcloud-sharding.sh &> report/gcloud-sharding &


# flank master

../android-run.sh ../flank-master.jar disable-sharding.yml &> report/flank-master &

../android-run.sh ../flank-master.jar enable-sharding.yml &> report/flank-master-sharding &


# #809-Fix-parameterized-testing

../android-run.sh ../flank-parameterized-test-fix.jar disable-sharding.yml &> report/flank-parameterized-fix &

../android-run.sh ../flank-parameterized-test-fix.jar enable-sharding.yml &> report/flank-parameterized-fix-sharding &


# dump shards

./dump-shards.sh ../flank-master.jar
mv android_shards.json report/android_shards-master.json

./dump-shards.sh ../flank-parameterized-test-fix.jar
mv android_shards.json report/android_shards-parameterized-fix.json

# wait for running jobs

FAIL=0
for job in $(jobs -p); do
  wait "$job" || (( FAIL+=1 ))
done
echo "failed jobs: $FAIL"
