option=$(gum choose \
        "Brightness +10%" \
		"Brightness -10%" \
		"Max Brightness" \
		"Set Brightness" \
        "Back" ) 

case "$option" in
		"Brightness +10%")
		if gum confirm "Increase brightness by 10%?"
			then
			brightnessctl set +10%
		fi

		wait 0.2

		;;
	    "Brightness -10%")
			if gum confirm "Decrease brightness by 10%?"
				then
				brightnessctl set 10%-
			fi
				
			wait 0.2

		;;
		"Max Brightness")
			if gum confirm "Set brightness to max?"
				then
				brightnessctl set 100%
			fi
				
			wait 0.2

		;;
		"Set Brightness")
			num=$(gum input --placeholder "Brightness Percent")

			if gum confirm "Set brightness to ${num}%?"
				then
				brightnessctl set ${num}%
			fi

			wait 0.2

			;;
        "Back")
        ;;
esac

