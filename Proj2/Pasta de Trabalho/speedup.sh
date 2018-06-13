#!/bin/bash
# This is a comment!

#for filename in ./$1/*.txt; do
shopt -s globstar
for filename in $1/**/*.txt; do
 #   echo $filename
    #    ./MyProgram.exe "$filename" "Logs/$(basename "$filename" .txt)_Log$i.txt"
    
    v=$filename

v2=${v%_*}


./src/speedupcalc $v2
    
done



