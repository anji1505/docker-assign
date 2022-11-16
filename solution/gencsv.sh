#!/bin/bash
#This script generates 10 Random Numbers.
RANDOM=$$
for i in `seq 10`
do 
	echo $i,$RANDOM
done >> inputFile
