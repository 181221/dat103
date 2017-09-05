#!/bin/bash
logg=$1
sum=0

echo "Hva er hendelsen?"
read hendelse
cat $logg | grep $hendelse | cut -f2 -s > hjelp.txt

while read p; do
   sum=$((sum+p))
done <hjelp.txt

echo $sum
rm hjelp.txt
