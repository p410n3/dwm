#!/bin/sh

# A dwm_bar function that shows the current date and time in persian
# Joe Standring <git@joestandring.com>
# GNU GPLv3

# Date is formatted like like this: "[Mon 01-01-00 00:00:00]"
dwm_jdate () {
    if [ "$IDENTIFIER" = "unicode" ]; then
        #printf "📆 %s" "$(date "+%a %d-%m-%y %T")"
        #printf "📆 %s" "$(jdate +%G'*'%d'*'%V'*'%Y)"
        printf "📆 %s" "$(jdate +''%d'/'%m'/'%Y)"
    else
        printf "DAT %s" "$(jdate +%G'*'%d'*'%V'*'%Y)"
    fi
    printf "%s\n" "$SEP"
}

dwm_jdate
