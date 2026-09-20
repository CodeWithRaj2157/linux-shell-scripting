#! /bin/bash
<< comment
   1st aregument for file name
   2nd argument for the starting range
   3rd argument for the ending range
comment



for (( i=$2; i<=$3; i++ ));
do 
	mkdir "$1$i"
	# making the dir $1 for dir-name and $i for the num (dir-name + num) i.e day1 .. day90
done

