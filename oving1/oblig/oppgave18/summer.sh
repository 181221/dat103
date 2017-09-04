#!/bin/bash
sum=0
echo "Vennligst skriv inn et tall"
while read tall
do
sum=$((sum+tall))
done
echo $sum
