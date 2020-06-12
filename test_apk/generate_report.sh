#!/usr/bin/env bash

set -euxo pipefail

mkdir report || true

# gcloud

./gcloud.sh &> report/gcloud &

./gcloud-sharding.sh &> report/gcloud-sharding &

./gcloud-orchestrator.sh &> report/gcloud-orchestrator &

./gcloud-orchestrator-sharding.sh &> report/gcloud-orchestrator-sharding &


# flank master

../android-run.sh ../flank-master.jar disable-sharding.yml &> report/master &

../android-run.sh ../flank-master.jar enable-sharding.yml &> report/master-sharding &

../android-run.sh ../flank-master.jar disable-sharding-orchestrator.yml &> report/master-orchestrator &

../android-run.sh ../flank-master.jar enable-sharding-orchestrator.yml &> report/master-sharding-orchestrator &


# #809-Fix-parameterized-testing

../android-run.sh ../flank-parameterized-test-fix.jar disable-sharding.yml &> report/flank-parameterized-fix &

../android-run.sh ../flank-parameterized-test-fix.jar enable-sharding.yml &> report/flank-parameterized-fix-sharding &

../android-run.sh ../flank-parameterized-test-fix.jar disable-sharding-orchestrator.yml &> report/flank-parameterized-fix-orchestrator &

../android-run.sh ../flank-parameterized-test-fix.jar enable-sharding-orchestrator.yml &> report/flank-parameterized-fix-sharding-orchestrator &

# local

./local.sh &> report/local

./local-sharding.sh &> report/local-sharding

./local-orchestrator.sh &> report/local-orchestrator

./local-sharding-orchestrator.sh &> report/local-sharing-orchestrator

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
