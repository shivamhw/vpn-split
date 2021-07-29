#!/bin/bash





to=1200
while :
do
	for i in `seq $1 $2`;
	do
		sudo docker exec ipv_$i ipch
		sleep $to
	done
done
#sudo pkill openvpn

#nohup sudo openvpn  --config Algeria.ovpn  --auth-user-pass pas > vpn_log &



