#!/bin/bash

basename=`xbasename.nims $1`

echo "Compile $1 to $basename.o"
nasm -f elf $1

echo "Make binary $basename"
ld -m elf_i386 "$basename.o" -o $basename
