#!/bin/bash


region=us-east-1
bucket=sam-tester
# don't add trailing /
path=dropbox-demo/v1
dry_run=False

./grouping/run_all.sh $region $bucket $path $dry_run
./exfiltrated-credentials/run_all.sh $region $bucket $path $dry_run
./okta-brute-force-to-crowdstrike/run_all.sh $region $bucket $path $dry_run
./mfa-disabled-for-active-user/run_all.sh $region $bucket $path $dry_run
