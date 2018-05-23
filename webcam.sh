#!/bin/bash

# replace gs://raspberry_pi_riikka below with
# your own bucket name.
BUCKET_NAME=raspberry_pi_riikka

gsutil cp index.html gs://$BUCKET_NAME

while true
do
raspistill -w 640 -h 480 15cm -q 75 -o image.jpg
gsutil -h "Cache-Control:no-cache" cp image.jpg gs://$BUCKET_NAME
gsutil acl ch -u AllUsers:R gs://$BUCKET_NAME/image.jpg
sleep 1m
done
