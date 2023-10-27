#!/bin/bash
echo "Enter the string"
read p
revs=$(echo $p|rev)
if [[ $p == $revs ]]
then
echo "Entered string $p is palindrome"
else
echo "Entered string $p is not palindrome"
fi
