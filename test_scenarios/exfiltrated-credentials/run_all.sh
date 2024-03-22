#! /bin/bash

region=${1:-us-east-1}
bucket=${2:-sam-test-pre-alpha}
path=${3:-correlation-rule/tester}
dry_run=${4:-False}
test_name=/exfiltrated-credentials

python send_data.py --region "$region" --dry_run "$dry_run" --compromise-datetime '2023-09-21T13:53:10+00:00' --bucket-name "$bucket" --test_name "$path""$test_name" --file ./exfiltrated-credentials/aws_cloudtrail.yml
sleep 2
python send_data.py --region "$region" --dry_run "$dry_run" --compromise-datetime '2023-09-21T13:53:10+00:00' --bucket-name "$bucket" --test_name "$path""$test_name" --file ./exfiltrated-credentials/github_audit.yml
sleep 2
python send_data.py --region "$region" --dry_run "$dry_run" --compromise-datetime '2023-09-21T13:53:10+00:00' --bucket-name "$bucket" --test_name "$path""$test_name" --file ./exfiltrated-credentials/aws_cloudtrail_bad.yml
