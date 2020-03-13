#! /bin/bash -x 

# WAP to take command line argument n from user and display power of two upto 2$

n=$1
count=1
power=1
while [[ count -le n && power -lt 256 ]]
do
		power=`echo "2 ^ $count" | bc`
		echo $power
		(( count++ ))
done

