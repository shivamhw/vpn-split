#!/bin/bash
fileCount=1
for i in `cat passFile`;
do
	echo ${i} is in pas${fileCount}
        echo ${i} > pas${fileCount}
	echo "naya11" >> pas${fileCount}
	fileCount=$[fileCount+1]
done
fileCount=1
for i in `seq 1 4`;
do
	echo Sending files now....
	for j in `seq 1 2`;
	do
		scp pas${fileCount} tp${i}:~/pas${j}
		fileCount=$[fileCount+1]
	done
done
