#! /bin/bash

get-disk-usage()
{
	df -h / | awk 'NR==2 {print $5}'

}

usage=$(get-disk-usage)

echo "Root filesystem usage: $usage"


