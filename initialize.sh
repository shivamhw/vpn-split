#!/bin/bash

st=$1
en=$2
for i in `seq $st $en`;
do
	echo "doing container $i" 
	docker exec squid_v2_$i ipch &
done
