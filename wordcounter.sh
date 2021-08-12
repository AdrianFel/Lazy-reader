#!/bin/bash
Totalwords=$((0));
Totalchars=$((0));
Totallines=$((0));
i=0;

while read line; do 
       	chars=$(echo $line | wc -c);
	words=$(echo $line | wc -w);
	Totallines=$((Totallines+1));
	Totalwords=$((Totalwords+words));
	Totalchars=$((Totalchars+chars));
	i=$((i+1));
	echo "line $i contains $words words and $chars chars"; 
done < $1





echo "Number of Words = $Totalwords"
echo "Number of Characters = $Totalchars"

