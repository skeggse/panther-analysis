#! /bin/bash


region=${1:-us-east-1}
bucket=${2:-sam-test-pre-alpha}
path=${3:-correlation-rule/tester}
dry_run=${4:-False}
test_name=/grouping

python send_data.py --region "$region" --dry_run "$dry_run" --compromise-datetime '2021-07-02T16:32:05+00:00' --bucket-name "$bucket" --test_name "$path""$test_name" --file ./grouping/new-user.yml
sleep 2
python send_data.py --region "$region" --dry_run "$dry_run" --compromise-datetime '2021-06-26T21:27:03+00:00' --bucket-name "$bucket" --test_name "$path""$test_name" --file ./grouping/admin_privs_assigned.yml
