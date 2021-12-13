#!/bin/bash
#Unauthenticated Cache Purge.

echo -e "\e[1;32m"
echo -e "\e[1;33m"
echo -e "\e[;32m"
target=$1

while read p
do
  echo
  echo -e "\e[1;32m $p \e[0m"
 echo -e "\e[;32m ---------------------------------------------------- \e[0m"
  echo -e "\e[1;33m curl --insecure --path-as-is -X PURGE $p \e[0m"
  echo
  curl --insecure --path-as-is -X PURGE $p
done < $target
