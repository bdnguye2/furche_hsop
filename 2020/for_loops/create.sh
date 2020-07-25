#!/bin/bash

# Create folders and output pwd
for pop in strawberry banana orange apple
do
  mkdir $pop
  cd $pop
  pwd >> ../destination2.txt
  cd ..
done
