#! /bin/bash

region=${1:-us-east-1}
bucket=${2:-sam-test-pre-alpha}
path=${3:-correlation-rule/tester}
dry_run=${4:-True}
test_name=/mfa-disabled-for-active-user

python send_data.py --region "$region" --dry_run "$dry_run" --compromise-datetime '2023-09-25T08:20:43+00:00' --bucket-name "$bucket" --test_name "$path""$test_name" --file ./mfa-disabled-for-active-user/mfa_not_disabled.yml
sleep 2
