#!/usr/bin/env bash

card=$(pacmd list-sinks | awk '/* index:/{print $3}')

if [ $card = 0 ]; then
	pactl set-sink-volume 0 -5%
elif [ $card = 1 ]; then
	pactl set-sink-volume 1 -5%
else
	pactl set-sink-volume "$card" -5%
fi
