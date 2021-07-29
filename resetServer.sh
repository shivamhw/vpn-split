#!/bin/bash 

echo "Getting python Command"
cmd=`sudo ps -eo cmd | grep "^sudo python3 NF.py"`
echo $cmd

echo "Killling python"
sudo pkill python3

echo "restarting containers" 
cd /home/ubuntu/
bash ./resetContainer.sh
sleep 60
echo "Starting python again"
echo `$cmd > log &`
