#!/bin/bash
# This is a comment!
echo Compilar Ficheiro        # This is a comment, too!
gcc -DUNIX -static -O0 src/$1.c -o tests/$1

echo Comecar simulacao
../../gem5/build/X86/gem5.opt two_level_inorder.py tests/$1 
cp m5out/stats.txt stats/$1_inorder.txt 
../../gem5/build/X86/gem5.opt two_level_outoforder.py tests/$1 
cp m5out/stats.txt stats/$1_outoforder.txt

./src/speedupcalc stats/$1