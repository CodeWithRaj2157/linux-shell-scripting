#!/bin/bash

<< readme
this is script for backup with  5 days rotation.
usage : backup.sh <path your source file>  <path your backup file>
readme


function display_usage()
{
	echo "Usage: backup.sh <path your source file> <path your backe file>"
}

if [ $# -eq 0 ];
then 
	display_usage
fi

source_dir=$1
timestamp=$(date '+%Y-%m-%d-%H-%M-%S')
backup_dir=$2

function create_backup()
{
	zip -r "${backup_dir}/backup_${timestamp}.zip"  "${source_dir}" > /dev/null 

	echo "backup is created succesfully for ${timestamp}"
}

function perform_rotation()
{
	# to take only latest backup file using sorting : ls -t cmd and take in backup variable
	
	backups=($(ls -t "${backup_dir}/backup_"*.zip 2>/dev/null))
	

	# to check the condtion if backup file is greater than 5 file then remove it(old file)
	
	if [ "${#backups[@]}" -gt 5 ];

	then 
		echo "perform rotation 5 days"

		# to take the latest only 5 backup file
		backup_to_remove=("${backups[@]:5}")


		# to remove the backupfile from backup_to_remove array

		for backup in "${backup_to_remove[@]}";
		do
			rm -f ${backup}
		done

	fi
}

create_backup
perform_rotation

