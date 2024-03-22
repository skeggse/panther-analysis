#!/bin/bash


region=us-east-1
bucket=sam-test-pre-alpha
# don't add trailing /
path=correlation-rule/be-roast
dry_run=${1:-False}

./grouping/run_all.sh $region $bucket $path "$dry_run"
./exfiltrated-credentials/run_all.sh $region $bucket $path "$dry_run"
./okta-brute-force-to-crowdstrike/run_all.sh $region $bucket $path "$dry_run"
./mfa-disabled-for-active-user/run_all.sh $region $bucket $path "$dry_run"
./okta-brute-force-data-exfiltration/run_all.sh $region $bucket $path "$dry_run"
