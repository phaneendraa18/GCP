#!/usr/bin/env bash

if gcloud compute instances list --project=$2 --access-token-file=token-file --filter="name=wp-7" | grep -q wp-7; then
  echo "Instance already exists."
else
  echo $3 > token-file
  gcloud compute instances create wp-7 --project=$2 --zone=us-central1-a --machine-type=e2-medium --network-interface=network-tier=PREMIUM,subnet=subnet-1 --tags=$3 --access-token-file=token-file
  rm token-file
fi
