#!/bin/bash
Totalwords=$((0));
Totalchars=$((0));
Totallines=$((0));
i=0;
Totalspaces=$((0));
Totalwhithoutspaces=$((0));
while read line; do 
       	chars=$(echo $line | wc -c);
	words=$(echo $line | wc -w);
	spaces=$(echo $line |grep -o ' ' | wc -l );
	Totalwords=$((Totalwords+words));
	Totalchars=$((Totalchars+chars));
	Totalspaces=$((Totalspaces+spaces));
	whithoutspaces=$(echo $line |tr -d '[:blank:]' | wc -c)
	i=$((i+1));
	Totalwhithoutspaces=$((Totalwhithoutspaces+whithoutspaces))
	echo "line $i contains $words words and $chars chars and $spaces spaces ";
	echo "line $i contains $whithoutspaces chars whithout spaces"; 
done < $1





echo "Number of Words = $Totalwords"
echo "Number of Characters = $Totalchars"

