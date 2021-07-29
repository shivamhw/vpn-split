#!/bin/bash
st=$1
end=$2
ip_base=100
for j in `seq $st $end`;
        do
                echo TP${j} : `curl -s -x http://172.18.0.$[$ip_base+$j]:8888 ifconfig.me`
        done

