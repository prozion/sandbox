#!/bin/bash

prjdir=/home/denis/projects

for dir in $(ls $prjdir)
do
  dirpath="$prjdir/$dir"
  if [ -d $dirpath ]
  then
    subdirs=$(ls -a $dirpath) 
    for subdir in $subdirs
    do
      if [ $subdir = ".git" ]
      then
        cd $dirpath
        git_status=`git status`
        if [[ $git_status != *"nothing to commit"* ]]
        then
          echo $dir
        fi
        cd - 1> /dev/null 2>&1
      fi
    done
  fi
done
