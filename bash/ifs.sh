#!/bin/bash

IFS=','
a="foo,bar,baz"
for word in $a
do
  echo "$word"
done
