#!/bin/bash

if [ -z "$@" ]; then
    echo -e "Power Off\n"
    echo -e "Logout\n"
    echo -e "Reboot\n"
else
    if [ "$1" = "Power Off" ]; then
        poweroff
    elif [ "$1" = "Logout" ]; then
        i3-msg exit
    elif [ "$1" = "Reboot" ]; then
        reboot
    fi
fi
