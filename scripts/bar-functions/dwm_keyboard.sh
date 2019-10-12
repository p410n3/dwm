#!/bin/sh

# A dwm_bar function that displays the current keyboard layout
# Joe Standring <git@joestandring.com>
# GNU GPLv3

# Dependencies: xorg-setxkbmap

dwm_keyboard () {
    if [ "$IDENTIFIER" = "unicode" ]; then
        #layout=$(xkblayout-state print %s)
        printf "⌨ %s" "$(xkblayout-state print %s)"
        #printf "⌨ %s" "$(setxkbmap -query | awk '/layout/{print $2}')"
    else
        printf "KEY %s" "$(xkblayout-state print %s)"
    fi
    printf "%s\n" "$SEP"
}

dwm_keyboard
