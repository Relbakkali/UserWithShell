#!/bin/bash

FILE=/etc/passwd


while read LINE ; do
	if [[ $LINE =~ "/usr/sbin/nologin" || $LINE =~ "/bin/false" ]] ; then
		continue 1		
	else
		echo #
		echo Username:
		echo "$LINE" | cut -d':' -f1	
		echo Shell:
		echo "$LINE" | cut -d':' -f7
		echo #	
	fi
done < "$FILE"



exit 0
