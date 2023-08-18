#!/bin/bash

#check if the number of external arguments is 2 
#check if the first external argument is integer
#check if the second external argument is integer
#check if second argument is zero

divide(){

num1=$1
num2=$2
ret_value=0

if [[ $num2 -eq 0  ]];then
ret_value=1
else
	res=$((num1/num2))
	echo $res
fi
return $ret_value

}


divide $1 $2 

