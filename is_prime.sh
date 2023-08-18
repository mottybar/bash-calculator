#/bin/bash

is_prime(){
num=$1
is_prime=0
if [[ $num -le 1  ]];then
	echo "$num is not a prime number"
	is_prime=1
	return $is_prime
fi

for (( i=2; i<=$((num/2)); i++ ));do
        if [[ $(($num % $i))  == 0 ]];then
                echo "$num is not a prime number"
                is_prime=1
                return $is_prime
        fi
done
echo "$num is a prime number"
return $is_prime
}

is_prime $1 $2





