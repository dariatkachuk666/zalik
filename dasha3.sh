#!/bin/bash
SAVEIFS=$IFS;
IFS=$'\n';
L=($( find ./ -type f ));
for (( i=0; i<${#L[@]}; i++ )); do mv "${L[$i]}" "./$( printf "%03d\n" $i)_$(basename -- "${L[$i]}")";
done;
IFS=$SAVEIFS
