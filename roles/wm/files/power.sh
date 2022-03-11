#!/bin/sh

charge="$(hwstat | grep -E 'Cap remain:' | tr -cd '[[:digit:]]')"

charged=100
critical=20

case $charge in
  *[0-9]*)
    source="battery"
    time="$(acpiconf -i 0 | grep "Remaining time" | tr -d '[:space:]' | sed 's/Remainingtime://')"
    if [ "$charge" -eq "$charged" ]
    then
    crw=charged
    elif [ "$charge" -lt "$critical" ]
    then
    crw=critical
    fi
    if [ "$time" == "unknown" ]
    then
    stat=ac
    time=" $charge%"
    fi
    ;;
  *)
    source="psu"
    time="PSU"
    ;;
esac

echo -e '{"text": "", "alt": "'$source'", "tooltip": "'$time'", "class": ["'$stat'", "'$crw'"], "percentage": '$charge' }'

exit 0
