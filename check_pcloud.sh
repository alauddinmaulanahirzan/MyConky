#!/bin/bash
status=$(mountpoint /home/maulana/pCloudDrive);
if [[ "$status" == *"is a mountpoint"* ]]
then
	total=$(df -h | grep pCloud | awk '{ print $2 }' | sed "s/\,/\./");
	used=$(df -h | grep pCloud | awk '{ print $3 }' | sed "s/\,/\./");
	echo "$used of $total"
else
	echo "OFFLINE"
fi