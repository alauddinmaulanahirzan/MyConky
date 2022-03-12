#!/bin/bash
ping -c 1 -q 1.1.1.1 > /dev/null 2>&1; res=$?
if [ $res -eq 0 ]
then
	count=$(rclone lsd USMDrive:/"ALAUDDIN/1. BELUM DIPERIKSA/" --drive-shared-with-me | wc -l);
	if [[ $count -gt 1 ]];
	then
		echo $(expr $count - 1);
	else
		echo "0"
	fi
else
	echo "OFFLINE"
fi
