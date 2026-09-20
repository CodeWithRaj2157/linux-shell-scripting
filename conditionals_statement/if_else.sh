#! /bin/bash

# this is my if else conditionals statement

read -p "ENTER THE MARKS : " mark

if [[ $mark -ge 75 ]];
then 
	echo "you are pass first class with distinction!!"
elif [[ $mark -ge 60 ]];
then 
	echo "you are pass with first class"
elif [[ $mark -ge 50 ]];
then 
	echo "you are pass with second class"
elif [[ $mark -ge 35 ]];
then 
	echo "you are pass with third class"
else 
	echo "you are failed"
fi

