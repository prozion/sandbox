#!/bin/bash

#while [ -n $1 ]
#do
  #echo "first: $1"
  #shift
#done
if [ "$1" == "" ]
then
  echo 11
fi

if [ -n "$1" ]
then
  echo "first parameter: " $1
fi
