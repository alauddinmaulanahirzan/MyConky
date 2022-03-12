#!/bin/bash
status=$(mountpoint /media/maulana/NAS);
if [[ "$status" == *"is a mountpoint"* ]]
then
	total=$(df -h | grep NAS | awk '{ print $2 }');
	used=$(df -h | grep NAS | awk '{ print $4 }');
	echo "$used of $total"
else
	echo "OFFLINE"
fi
