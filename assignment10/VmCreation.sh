#!/usr/bin/env bash

echo $1 > token-file
echo $1
echo $2
echo $3
#gcloud compute instances create wp-7 --project=pj-project-374418 --zone=us-central1-a --machine-type=e2-medium --network-interface=network-tier=PREMIUM,subnet=subnet-1 --tags=web-server --access-token-file=token-file

