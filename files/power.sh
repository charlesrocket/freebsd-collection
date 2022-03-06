#!/bin/sh

charge=$(hwstat | grep -E 'Cap remain:' | tr -cd '[[:digit:]]')
ac=$(hwstat | grep 'Time remain:' | sed 's/Time remain://' | tr -d '[:space:]')

if [ ${ac} == OnAC ]; then
    stat="ac"
fi

echo -e '{"text": "", "alt": "'$stat'", "tooltip": '$charge', "class": "$class", "percentage": '$charge' }'

exit 0
