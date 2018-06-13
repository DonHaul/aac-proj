#!/bin/bash

shopt -s globstar
for filename in $1/**/*.c; do
echo $filename
v2=${filename%.*}
v3=${v2#*/}
v3=${v3#*/}
v3=${v3#*/}
v3=${v3#*/}
v3=${v3#*/}
v3=${v3#*/}

cp $filename nostats/"$v3".notc 

#echo Comecar simulacao
gcc -DUNIX -static -O0 $filename -o notests/$v3

../../gem5/build/X86/gem5.opt two_level_inorder.py notests/$v3 
cp m5out/stats.txt nostats/"$v3"_inorder.txt 
../../gem5/build/X86/gem5.opt two_level_outoforder.py notests/$v3  
cp m5out/stats.txt nostats/"$v3"_outoforder.txt

#./src/speedupcalc stats/$1
    
done
