#!/bin/bash

#check if the number of external arguments is 2 
#check if the first external argument is integer
#check if the second external argument is integer

multiply() {
num1=$1
num2=$2

res=$((num1*num2))
echo $res

}

multiply $1 $2 $3 
