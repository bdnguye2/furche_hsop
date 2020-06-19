#!/bin/bash

N=4
for i in pbe tpssh tpssh_d3
   do for j in def2-svp def2-tzvp
      do
	((nproc=nproc%N)); ((nproc++==0)) && wait
        cd $i/$j
        aoforce > aoforce.out &
	cd ../../
      done
   done
