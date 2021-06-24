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

VALUES=()
count=0
for DATA in "${result[@]}";
do
        VALUES+=("${DATA##*:}")
	let count++
done

for(( i=0;i<count; i++ ))
do
	arr[i]=${VALUES[i]}
done

# array size
size=${#arr[@]}

function sortArray() {
	for (( i=0; i<size; i++ )) {
		for (( j=i+1; j<size; j++ )) {
			if [ ${arr[i]} -gt ${arr[j]} ]
			then
				temp=${arr[i]}
				arr[i]=${arr[j]}
				arr[j]=$temp
			fi
		}
	}
	echo ${arr[@]}
}

# invoking the function to sort the array in ascending order
sortArray ${arr[@]}





