#!/bin/bash

st=$1
end=$2
for i in `seq $st $end`;
do
	echo "doing container $i"
	docker stop squid_v2_$i &
done
