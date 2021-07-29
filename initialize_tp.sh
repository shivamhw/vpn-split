#!/bin/bash
base="tp_"
st=$1
en=$2
for i in `seq $st $en`;
do
	echo "doing container $i" 
	docker exec $base$i ipch &
done
