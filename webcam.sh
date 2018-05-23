#!/bin/bash

# replace gs://raspberry_pi_riikka below with
# your own bucket name.
gsutil index.html

while true
do
raspistill -w 640 -h 480 15cm -q 75 -o image.jpg
gsutil -h "Cache-Control:no-cache" cp image.jpg gs://raspberry_pi_riikka
gsutil acl ch -u AllUsers:R gs://raspberry_pi_riikka/image.jpg
sleep 1m
done
