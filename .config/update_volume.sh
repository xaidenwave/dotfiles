#!/bin/sh

case $1 in

        -i)
                pactl set-sink-volume @DEFAULT_SINK@ +5%
                pkill sleep
                ;;
        -d)
                pactl set-sink-volume @DEFAULT_SINK@ -5%
                pkill sleep
                ;;
        -m)
                pactl set-sink-mute @DEFAULT_SINK@ toggle
                ;;
esac
