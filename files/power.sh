#!/bin/sh

charge=$(hwstat | grep -E 'Cap remain:|Time remain:' | tr -cd '[[:digit:]]')
stat=$(hwstat | grep 'Time remain:' | sed 's/Time remain://' | tr -d '[:space:]')

echo -e '{"percentage": '$charge', "stat": "'$stat'" }'

exit 0
