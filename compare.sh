#!bin/bash

cd $1 #Change to directory specified
COMPILED=$(find . -type f \( -name "*.o" ! -name "built-in.o" \) | wc -l) #Compiled file count
SOURCE=$(find . -type f -name "*.c" | wc -l) #Source file count

echo  $COMPILED "/" $SOURCE #Print results to console
# echo $('$COMPILED/$SOURCE\*100' | bc) #TODO Find some way to calculate percentage in bash
