#!/bin/bash

i=0;
while read line; do
 if [ $((i%2)) -eq 1 ]; then
   echo $line;
 fi;
 i=$((i+1));
done < $1

