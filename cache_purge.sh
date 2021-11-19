#!/bin/bash
#Unauthenticated Cache Purge.
#Author: sushant dhopat

echo -e "\e[1;32m"
echo -e "\e[1;33m"
echo -e "\e[;32m"
target=$1

while read p
do
  echo
  echo -e "\e[1;32m $p \e[0m"
 echo -e "\e[;32m ---------------------------------------------------- \e[0m"
  echo -e "\e[1;33m curl -X PURGE $p \e[0m"
  echo
  curl -X PURGE $p
done < $target
