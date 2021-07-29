#!/bin/bash
base="tp_"
st=$1
end=$2
for i in `seq $st $end`;
do
	echo "doing container $i"
	docker stop $base$i &
done
