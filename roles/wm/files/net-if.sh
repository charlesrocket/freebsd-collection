#!/bin/sh

ifc=$(ifconfig | pcregrep -M -o '^[^\t:]+:([^\n]|\n\t)*status: active' | egrep -o -m 1 '^[^\t:]+')
wg=$(wg show | grep "latest handshake" |  tr -cd '[[:digit:]]')

if [ "${wg}" -ge 0 ]
then
vpn="active"
else
vpn="inactive"
fi

if [ "${ifc}" == "wlan0" ]
then
interface=""
elif [ "${ifc}" == "eth0" ]
then
interface=""
elif [ "${ifc}" == "ue0" ]
then
interface=""
elif [ "${ifc}" == "re0" ]
then
interface=""
elif [ "${ifc}" == "em0" ]
then
interface=""
else
interface=""
fi

echo -e '{"text": "'$interface'", "alt": "'$vpn'", "tooltip": "", "class": "", "percentage": "" }'

exit 0
