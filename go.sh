#!/bin/sh

make clean
rm -fv adventure.data
make || exit 1
rm *.o
./adventure
