#!/bin/bash
# Script to run all test for Theia
# Greps out only lines that have 'FAILED'
FILES='ls ../theia_build/bin/*_test'
for f in $FILES
do
  # echo "Processing $f file..."
  # take action on each file. $f store current file name
  ./$f  | grep "FAILED"
done
