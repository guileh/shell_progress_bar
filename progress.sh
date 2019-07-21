#!/bin/bash
# This is a sample of how to create a progressbar in shell

function progress()
{

   local CURRENT=${1:-1}
   local TOTAL=${2:-100}
   local PERCENTAGE=$(( 100 * $CURRENT / $TOTAL ))
   local EMPTY_SIZE=`expr 100 - $PERCENTAGE`
   local EMPTY_CHAR=${3:-"_"}
   local DONE_CHAR=${4:-"|"}

   for progress_count_1 in `seq 1 $EMPTY_SIZE`
   do
     echo -en "$EMPTY_CHAR"
   done

   echo -en "\0015"

   for progress_count_2 in `seq 1 $PERCENTAGE`
      do
        echo -en "$DONE_CHAR"
    done
    echo -ne " [$PERCENTAGE%]"
}


### SAMPLE: HOW TO USE ####
FILES=( "myfile1.txt" "myfile2.txt" "myfile3.txt" "myfile4.txt"  )
TOTAL_FILES=${#FILES[@]}
echo "Processing files ..."

i=0
for f in ${FILES[@]}
do
   i=`expr $i + 1`
   ### put here some command that changes your files
   progress $i $TOTAL_FILES
   # use sleep if your process is too small
   sleep 2;
done
printf "\n%s\n" "Files Processed"
