#! /bin/bash


region=${1:-us-east-1}
bucket=${2:-sam-test-pre-alpha}
path=${3:-correlation-rule/tester}
dry_run=${4:-False}
test_name=/okta-brute-force-data-exfiltration


python send_data.py --region "$region" --dry_run "$dry_run" --compromise-datetime '2021-06-25T21:44:45+00:00' --bucket-name "$bucket" --test_name "$path""$test_name" --file ./okta-brute-force-data-exfiltration/brute_force_logins.yml
sleep 2
python send_data.py --region "$region" --dry_run "$dry_run" --compromise-datetime '2023-09-21T13:53:00+00:00' --bucket-name "$bucket" --test_name "$path""$test_name" --file ./okta-brute-force-data-exfiltration/attacker_cloudtrail.yml
sleep 2
