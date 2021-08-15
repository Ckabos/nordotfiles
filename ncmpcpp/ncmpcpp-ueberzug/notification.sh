#!/usr/bin/env bash

notify-send "Now Playing" "$(mpc --format '%title% \n%artist% - %album%' current)"

