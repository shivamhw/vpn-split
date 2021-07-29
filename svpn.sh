#!/bin/bash

co=$1
echo $co
while true
do
	
	for i in `seq $co 73` 
	do
		echo $i | vyprvpn server set
		vyprvpn c
		sleep 100
	done
done
