#! /bin/bash


region=${1:-us-east-1}
bucket=${2:-sam-tester}
path=${3:-dropbox-demo-2}
dry_run=${4:-False}
test_name=/okta-brute-force-to-crowdstrike

sleep 2
python send_data.py --region "$region" --dry_run "$dry_run" --compromise-datetime '2021-06-25T21:40:55+00:00' --bucket-name "$bucket" --test_name "$path""$test_name" --file ./okta-brute-force-to-crowdstrike/brute_force_logins.yml
sleep 2
python send_data.py --region "$region" --dry_run "$dry_run" --compromise-datetime '2021-06-26T21:27:00+00:00' --bucket-name "$bucket" --test_name "$path""$test_name" --file ./okta-brute-force-to-crowdstrike/crowdstrike-detectionsummary.yml
sleep 2
