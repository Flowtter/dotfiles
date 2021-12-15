#!/bin/bash
Icon="/PATH/TO/ICON_ON"
Icoff="/PATH_TO_ICON_OFF"
fconfig=".wifi" 
id=20

if [ ! -f $fconfig ];
    then
        echo "Creating config file"
        echo "enabled" > $fconfig
        var="enabled"
    else
        read -r var< $fconfig
        echo "wifi is : $var"
fi

if [ $var = "disabled" ];
    then
        notify-send -i $Icon "Enabling wifi..." \ "ON - wifi connected !";
        echo "enable wifi..."
        nmcli radio wifi on
        echo "enabled" > $fconfig
    elif [ $var = "enabled" ]; then
        notify-send -i $Icoff "Disabling wifi" \ "OFF - wifi disconnected";
        echo "disable wifi"
        nmcli radio wifi off
        echo 'disabled' > $fconfig
fi
