#! /bin/bash

i=1

while [[ i -le 5 ]];
do 
	mkdir "demo$i"
	i=$((i+1))
done


