#!/bin/bash
echo "Enter the number"
read n
if [[ $n%2 -eq 0 ]]
then
echo "Number $n is even"
k=$(($n+10))
echo "Added 10 to $n then output is $k"
else
echo "Number $n is odd"
k=$(($n-5))
echo "Subtracted 5  from $n annd output is $k"
fi
