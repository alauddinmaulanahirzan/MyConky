#!/bin/bash

ping -c 1 -q 192.168.192.101 > /dev/null 2>&1; res=$?
if [ $res -eq 0 ];then echo Connected;else echo Not Connected;fi
