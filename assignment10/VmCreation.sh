#!/usr/bin/env bash

echo $1 > token-file

gcloud compute instances create wp-7 --project=$2 --zone=us-central1-a --machine-type=e2-medium --network-interface=network-tier=PREMIUM,subnet=subnet-1 --tags=$3 --access-token-file=token-file
gcloud compute instances delete wp-7 --zone=us-central1-a --project=$2 --access-token-file=token-file
