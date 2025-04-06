#!/bin/bash

# make sure to do chmod +x ~/.config/polybar/scripts/getWindows.sh to make it working

function main() {
	windows=$(bspc query -N -d focused | wc -l)

	mod=$(( windows / 2 ))

	if [[ windows -ge 4 ]]; then
		windows=$(( windows - mod ))
	elif [[ windows -ge 3 ]]; then
		windows=$(( windows - 1 ))
	fi

	echo $windows
}

main $@
