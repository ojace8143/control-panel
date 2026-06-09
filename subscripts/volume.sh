#!/bin/bash
option=$(gum choose \
	"Vol +10" \
	"Vol -10" \
	"Set Vol" )

 case "$option" in 
	 "Vol +10")
		if gum confirm "Increase volume by 10%?"
			then
			pactl set-sink-volume @DEFAULT_SINK@ +10%
		fi

		wait 0.2

	;;

	"Vol -10")
	if gum confirm "Decrease volume by 10%?"
		then
	   	pactl set-sink-volume @DEFAULT_SINK@ -10%
	fi
			   
	wait 0.2

	;;

	"Set Vol")

	num=$(gum input --placeholder "Volume Percent")
	
	if gum confirm "Set volume to ${num}%?"
		then
		pactl set-sink-volume @DEFAULT_SINK@ "${num}%" 
	fi

	wait 0.2

	;;	
esac
