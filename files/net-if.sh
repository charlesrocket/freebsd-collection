#!/bin/sh

ifc=$(ifconfig | pcregrep -M -o '^[^\t:]+:([^\n]|\n\t)*status: active' | egrep -o -m 1 '^[^\t:]+')

if [ "${ifc}" == "wlan0" ]
then
echo ""
elif [ "${ifc}" == "eth0" ]
then
echo ""
elif [ "${ifc}" == "ue0" ]
then
echo ""
elif [ "${ifc}" == "re0" ]
then
echo ""
elif [ "${ifc}" == "em0" ]
then
echo ""
else
echo ""
fi

exit 0
