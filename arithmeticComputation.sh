#!/bin/bash -x

read -p "Enter the first number:" a
read -p "Enter the second number:" b
read -p "Enter the third number:" c

result1=$(($a+$b*$c))
result2=$(($a*$b+$c))
result3=$(($c+$a/$b))
result4=$(($a%$b+$c))


declare -A result

result[m]=$result1
result[n]=$result2
result[o]=$result3
result[p]=$result4

echo ${result[@]}
