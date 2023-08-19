#!/bin/bash

filename=$1

IFS="."

for part in $filename
do
  parts+=$part
done

corename=$parts[0]
ext=$parts[1]

#echo $parts
echo "$ext $corename"
