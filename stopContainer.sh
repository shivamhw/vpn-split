#!/bin/bash
st="$1"
end="$2"
for i in `seq $st $end`;
do
	sudo docker stop tp_$i
done
