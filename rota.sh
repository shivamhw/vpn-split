#!/bin/bash

st=$1
end=$2
to=$3
while :
do
	for i in `seq $st $end`;
	do
		echo "doing container $i"
		docker exec squid_v2_$i ipch 
		sleep $to
	done
done
