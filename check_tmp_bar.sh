#!/bin/bash
status=$(mountpoint /tmp);
if [[ "$status" == *"is a mountpoint"* ]]
then
	current=$(df -h | grep /tmp | awk '{ print $5 }' | sed "s/\%//");
	echo "$current"
else
	echo "OFFLINE"
fi