#!/bin/bash
ping -c 1 -q 1.1.1.1 > /dev/null 2>&1; res=$?
if [ $res -eq 0 ]
then
	status=$(yandex-disk status | grep status | sed "s/^.*\:\s//g");
	total=$(yandex-disk status | grep Total | sed "s/^.*\\:\s//g" | sed -r "s/\s*GB/GB/");
	used=$(yandex-disk status | grep Used | sed "s/^.*\\:\s//g" | sed -r "s/\s*GB/GB/");
	yandex=$used" of "$total;
	if [[ "$status" == "no internet access" ]]
	then
		echo "OFFLINE"
	else
		echo $yandex
	fi
else
	echo "OFFLINE"
fi