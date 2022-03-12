#!/bin/bash
status=$(mountpoint /tmp);
if [[ "$status" == *"is a mountpoint"* ]]
then
	total=$(df -h | grep /tmp | awk '{ print $2 }' | sed "s/\,/\./");
	used=$(df -h | grep /tmp | awk '{ print $3 }' | sed "s/\,/\./");
	echo "$used of $total"
else
	echo "OFFLINE"
fi