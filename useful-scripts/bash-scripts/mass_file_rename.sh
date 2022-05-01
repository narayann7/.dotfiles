#!/bin/bash 

from=$1
to=$2
name=$3
index=1

for i in *$from ;
do
	ans=$(echo $i| cut  -d'.' -f 1);

	if [ -z $name ]
	then
		ans=$ans$"."$to
	else
		ans=$name$index$"."$to
		index=$(($index+1))
	fi	
	mv $i $ans
done
ls *$to


:'
mass_file_rename.sh to from (if name)

ex-> mass_file_rename.sh cpp java 
     mass_file_rename.sh java cpp test


'