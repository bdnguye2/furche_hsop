#!/bin/bash

for i in pbe tpssh tpssh_d3
	do for j in def2-svp def2-tzvp
	do cd $i/$j
		t2x coord > opt.xyz 
		cd ../../
	done
done
