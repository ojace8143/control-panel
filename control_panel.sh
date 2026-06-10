#!/bin/bash
while true
do
    clear

    volume=$(wpctl get-volume @DEFAULT_AUDIO_SINK@ | awk '{print int($2 * 100)}')

    brightness=$(brightnessctl get)
    max=$(brightnessctl max)
    brightness_percent=$(( 100 * brightness / max))

    gum style \
        --border rounded \
        --padding "1 2" \
        --align center \
     	"Control Panel
	
    	 Volume: ${volume}%
	     Brightness: ${brightness_percent}%
        "

    choice=$(gum choose \
        "Volume" \
        "Brightness" \
    	"Power" \
        "System Info" \
        "Misc" \
        "Quit")

    case "$choice" in
    "Volume")
	    source ~/Scripts/control_panel/subscripts/volume.sh
	;;
    "Brightness")
        source ~/Scripts/control_panel/subscripts/brightness.sh
    ;;
	"Power")
		option=$(gum choose \
			"Shutdown" \
            "Use Battery Optimization" \
            "Back" ) 
        
        case "$option" in
            "Shutdown")
            if gum confirm "Shutdown computer?"
                then
                shutdown now
            fi
            ;;
            "Use Battery Optimization")
            source subscripts/battery.sh
            exit
            ;;
            "Back")
            ;;  
        esac
	    ;;
        "System Info")
            gum confirm "System info coming soon!"
        ;;
        "Misc")
        source subscripts/misc.sh
        ;;
        "Quit")
            exit
        ;;
    esac
done
