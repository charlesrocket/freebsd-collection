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
if=""
elif [ "${ifc}" == "eth0" ]
then
if=""
elif [ "${ifc}" == "ue0" ]
then
if=""
elif [ "${ifc}" == "re0" ]
then
if=""
elif [ "${ifc}" == "em0" ]
then
if=""
else
if=""
fi

echo -e '{"text": "'$if'", "alt": "'$vpn'", "tooltip": "", "class": "", "percentage": "" }'

exit 0
