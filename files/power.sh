#!/bin/sh

charge="$(hwstat | grep -E 'Cap remain:' | tr -cd '[[:digit:]]')"
ac="$(hwstat | grep 'Time remain:' | sed 's/Time remain://' | tr -d '[:space:]')"

if [ "${ac}" == "OnAC" ]
then
stat=ac
fi

case $charge in
  *[0-9]*)
    source="battery"
    ;;
  *) 
   source="psu" 
    ;;
esac

echo -e '{"text": "", "alt": "'$source'", "tooltip": '$charge', "class": "'$stat'", "percentage": '$charge' }'

exit 0
