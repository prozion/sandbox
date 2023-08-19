#!/bin/bash

path=/home/denis/projects

for file in $path/*
do
  echo `du -hs $file | awk '{ print $1 }' | sort -n -`
done
