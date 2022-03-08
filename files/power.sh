#!/bin/sh

charge="$(hwstat | grep -E 'Cap remain:' | tr -cd '[[:digit:]]')"
ac="$(hwstat | grep 'Time remain:' | sed 's/Time remain://' | tr -d '[:space:]')"

charged=100
critical=20

case $charge in
  *[0-9]*)
    source="battery"
     if [ "$charge" -eq "$charged" ]
     then
     crw=charged
     elif [ "$charge" -lt "$critical" ]
     then
     crw=critical
     fi
     ;;
  *)
     source="psu"
     ;;
esac

if [ "$ac" == "OnAC" ]
then
stat=ac
fi

echo -e '{"text": "", "alt": "'$source'", "tooltip": '$charge', "class": ["'$stat'", "'$crw'"], "percentage": '$charge' }'

exit 0
