#! /bin/bash

region=${1:-us-east-1}
bucket=${2:-sam-tester}
path=${3:-dropbox-demo-2}
dry_run=${4:-False}
test_name=/exfiltrated-credentials

python send_data.py --region "$region" --dry_run "$dry_run" --compromise-datetime '2023-09-21T13:53:10+00:00' --bucket-name "$bucket" --test_name "$path""$test_name" --file ./exfiltrated-credentials/aws_cloudtrail.yml
sleep 2
python send_data.py --region "$region" --dry_run "$dry_run" --compromise-datetime '2023-09-21T13:53:10+00:00' --bucket-name "$bucket" --test_name "$path""$test_name" --file ./exfiltrated-credentials/github_audit.yml
sleep 2
python send_data.py --region "$region" --dry_run "$dry_run" --compromise-datetime '2023-09-21T13:53:10+00:00' --bucket-name "$bucket" --test_name "$path""$test_name" --file ./exfiltrated-credentials/aws_cloudtrail_bad.yml
