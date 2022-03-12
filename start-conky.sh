#!/bin/bash
kill -15 $(ps aux | grep conky | grep album_arts | awk '{ print $2 }');
hdmi_active=$(xrandr |grep ' connected' |grep 'HDMI' |awk '{print $1}')
if [[ ! -z "$hdmi_active" ]];
then
	hdmi_pos=$(xrandr | grep "HDMI" | grep -oP "\d*x\d*\+\d*\+\d");
	if [[ "$hdmi_pos" == "1366x768+0+0" ]];
	then		
		conky -x 20 -c "/home/maulana/.conky/album_arts";
	else
		conky -c "/home/maulana/.conky/album_arts";
	fi
else
	conky -c "/home/maulana/.conky/album_arts";
fi
