#!/bin/bash
end=$1

ip=100

for i in `seq 1 $end`;
do
	ip=$[ip+i]
	echo "172.18.0.$ip:8888"
	ip=100
done
