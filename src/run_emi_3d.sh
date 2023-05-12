#!/bin/bash
REDBG='\e[48;2;255;0;02m'
NC='\e[m'

script=emi_3d.py
nrefs=6

prcnd="metric"
for pr in $prcnd
do
  for gma in 1e0 1e2 1E4 1E6 1E8 1E10
  do
    echo -e "\n${REDBG}Running $script with $pr preconditioner and gamma=$gma ${NC}\n"
    python3 $script -nrefs $nrefs -precond "$pr" -gamma $gma
  done
done
