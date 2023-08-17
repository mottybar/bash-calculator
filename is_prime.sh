#/bin/bash

is_prime(){
prime=$1
limit=$((prime/2))

if [[ $1 -eq 1 || $1 -eq 2 || $1 -eq 3 ]];then
	is_prime=true
fi

for (( i=2; i<=$limit; i++ ));do
	if [[ $(($prime % $i))  == 0 ]];then
		echo "$prime isn't a prime number"
		is_prime=false
		break
	else
		is_prime=true
	fi
done
if [[ $is_prime == true ]];then
	echo "$prime is a prime number"
fi
}

is_prime $1
