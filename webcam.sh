#!/bin/bash

# replace gs://raspberry_pi_riikka below with
# your own bucket name.

while true
do
raspistill -o image.jpg
gsutil cp image.jpg gs://raspberry_pi_riikka
sleep 1m
done