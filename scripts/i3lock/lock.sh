#!/bin/bash

gnome-terminal --tab --command="bash -c 'sleep 0.5; i3-msg fullscreen; hollywood; clear'"
sleep 0.5
i3lock -p win
