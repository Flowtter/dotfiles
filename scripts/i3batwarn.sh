#!/bin/sh

while true; do

	BATTERY="$(echo '/sys/class/power_supply/BAT'?)"

	STAT="$(cat "${BATTERY}/status")"

	PERCENT="$(upower -i $(upower -e | grep '/battery') | grep --color=never -E percentage | xargs | cut -d' ' -f2 | sed s/%//)"

	MESSAGE="Low battery warning"

	LIMIT="15"


	if [ "${PERCENT}" -le "${LIMIT}" ] && [ "${STAT}" = "Discharging" ]; then
		notify-send "${MESSAGE}, ${PERCENT}%" "NOW" -u critical
	fi
	sleep 120
done
