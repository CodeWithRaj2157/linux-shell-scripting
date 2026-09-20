#! /bin/bash

check_disk()
{
	usage=$(df / | awk 'NR==2 {gsub("%","") ; print($5)'})

	if [[ "$usage" -ge 80 ]];
	then 
		echo  "WARNING: Disk usagei is ${usage}%"
		return 1
	else
		echo "Disk usage is ${usage}% - OK"
		return 0
	fi

}

check_disk
