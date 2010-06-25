#!/bin/sh

ulimit -c unlimited
rm -f /cores/*

make clean
rm -fv adventure.data
make || exit 1
# rm *.o
./adventure
