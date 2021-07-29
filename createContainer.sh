#!/bin/bash
st="$1"
end="$2"
pas="$3"
ip=$[st+100]
for i in `seq $st $end`;
do
	echo "sudo docker run --privileged -d --name tp_$i -v /home/shivamhw/$pas:/VPN256/pas --net tinyp --ip 172.18.0.$ip shivamhw/tp:final"
	#sudo docker run --privileged -d --name tp_$i -v /home/shivamhw/Scripts/latest_vpn:/VPN256 -v /home/shivamhw/Scripts/mine/$pas:/VPN256/pas --net tinyp --ip 172.18.0.$ip shivamhw/tp:final
	
	sudo docker run --privileged -d --name tp_$i -v /home/shivamhw/ipvanish/VPN:/VPN256 -v /home/shivamhw/ipvanish/VPN/$pas:/VPN256/pas --net tinyp --ip 172.18.0.$ip shivamhw/tp:final
	ip=$[ip+1]
done
