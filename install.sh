#! /bin/bash
# This file installs...
# Write your project and your local directory names below.
PROJECT_NAME=
BUCKET_NAME=gs://{$PROJECT_NAME}-bucket

LOCAL_DIRECTORY=

cd $LOCAL_DIRECTORY


gsutil mb -l eu -p $PROJECT_NAME $BUCKET_NAME
gcloud services enable sourcerepo.googleapis.com
gcloud source repos create raspberry-webcam-repo
git config credential.'https://source.developers.google.com'.helper gcloud.sh
git remote add google https://source.developers.google.com/p/{$PROJECT_NAME}/r/raspberry-webcam-repo
git add .
git commit -m "initial commit"
git push google master
gcloud iam service-accounts create service-account-for-raspberry --display-name "Raspberry Service Account"
gcloud iam service-accounts keys create key.json --iam-account=raspberry-pi-service-account
scp key.json pi@raspberrypi.local:.
ssh pi@raspberrypi.local gcloud auth activate-service-account --key-file=key.json


To be continued..



READ.ME: nohup ./webcam.sh >> webcam.log &
