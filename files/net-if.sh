#!/bin/sh

ifc=$(ifconfig | pcregrep -M -o '^[^\t:]+:([^\n]|\n\t)*status: active' | egrep -o -m 1 '^[^\t:]+')

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

vpn="inactive"

echo -e '{"text": "'$if'", "alt": "'$vpn'", "tooltip": "", "class": "", "percentage": "" }'

exit 0
