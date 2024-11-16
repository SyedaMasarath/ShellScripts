#!/bin/bash

today=$(date +%Y-%m-%d)
log_file="logfile-$today"
echo "$log_file"
if [ -f "$log_file" ]; then
    count=$(grep -E " 2[0-9]{2}" "$log_file" | wc -l)
    echo "Number of 2XX Status Codes is :$count"
else
    echo "No Log File Found at Destination"
fi