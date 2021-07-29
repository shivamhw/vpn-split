#!/bin/bash

st=$1
end=$2
ip_base=100

for i in `seq $st $end`;
do
	ip_base=$[$ip_base+1]
	curl -x http://172.18.0.$ip_base:8888 ifconfig.me
	echo ""
done
