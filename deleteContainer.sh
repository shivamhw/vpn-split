#!/bin/bash
st="$1"
end="$2"
for i in `seq $st $end`;
do
	sudo docker container rm tp_$i 
done
