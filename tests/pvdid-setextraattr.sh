#!/bin/sh

. `dirname $0`/check-nc.sh

{
	echo PVD_CONNECTION_PROMOTE_CONTROL
	echo PVD_BEGIN_TRANSACTION pvd.cisco.com
	echo PVD_MULTILINE 5
	echo PVD_SET_ATTRIBUTE pvd.cisco.com extraJson
	echo '{'
	echo '		"validUntil" : "2017-04-17T06:00:00Z",'
	echo '		"name" : "orange.fr"'
	echo '	}'
	echo PVD_END_TRANSACTION pvd.cisco.com
} | $NC 0.0.0.0 10101

