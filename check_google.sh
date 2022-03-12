#!/bin/bash
status=$(mountpoint /media/maulana/GoogleDrive);
if [[ "$status" == *"is a mountpoint"* ]]
then
	total=$(df -h | grep GoogleDrive: | awk '{ print $2 }' | sed "s/\,/\./");
	used=$(df -h | grep GoogleDrive: | awk '{ print $3 }' | sed "s/\,/\./");
	echo "$used of $total"
else
	echo "OFFLINE"
fi
