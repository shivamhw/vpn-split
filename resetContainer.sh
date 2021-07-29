#!/bin/bash
cd /home/ubuntu

echo "Stopping ans Removing Containers"
for i in `seq 1 10`;
do
	sudo docker stop tp_$i 
	sudo docker container rm tp_$i
done

sudo systemctl restart docker
echo "Creating Container"
bash ./createContaier.sh 1 5 pas1
bash ./createContaier.sh 6 10 pas2

