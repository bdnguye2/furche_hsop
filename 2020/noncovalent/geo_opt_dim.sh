#!/bin/bash

for i in */
do
    cd $i
    x2t *xyz > coord
    define < ../definp
    cd ..
done

N=4
for i in */
do
    ((nproc=nproc%N)); ((nproc++==0)) && wait
    cd $i
    jobex -ri &
    cd ..
done
