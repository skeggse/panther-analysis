#! /bin/bash

region=${1:-us-east-1}
bucket=${2:-sam-test-pre-alpha}
path=${3:-correlation-rule/tester}
dry_run=${4:-True}
test_name=/dana


python send_data.py --region "$region" --dry_run "$dry_run" --compromise-datetime '2021-06-25T21:27:03+00:00' --bucket-name "$bucket" --test_name "$path""$test_name" --file ./detections-team"$test_name"/brute_force_logins.yml
python send_data.py --region "$region" --dry_run "$dry_run" --compromise-datetime '2021-07-02T16:16:05+00:00' --bucket-name "$bucket" --test_name "$path""$test_name" --file ./detections-team"$test_name"/new-user.yml
python send_data.py --region "$region" --dry_run "$dry_run" --compromise-datetime '2021-06-26T21:09:03+00:00' --bucket-name "$bucket" --test_name "$path""$test_name" --file ./detections-team"$test_name"/admin_privs_assigned.yml


