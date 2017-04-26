#!/bin/sh

if [ $# != 1 ]
then
	echo "usage : $0 pvdId"
	exit 1
fi

echo PVDID_GET_ATTRIBUTES "$@" | nc 0.0.0.0 10101 | grep -v PVDID_ | jq -M --tab
