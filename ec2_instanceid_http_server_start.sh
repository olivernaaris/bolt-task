#!/bin/bash

while true; do (echo -e "$(ec2metadata --instance-id)") | nc -N -l 8108; done
echo "Netcat HTTP server started"
