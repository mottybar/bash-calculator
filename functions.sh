#!/bin/bash

num_of_arg_validation(){
#check if number of arguments equal to 2
if [[ $# -eq 2 ]];then
	echo "Argument received: $1 $2"
	return 0 #true
else
	 echo "Function expects two argument"
	return 1 #false
fi
}

is_integer(){
if [[ $1 =~ ^[+-]?[0-9]+$ ]];then
	echo "$1 is integer"
	return 0
else
	echo "$1 isn't integer"
	return 1
fi


}

multiply() {
if ( num_of_arg_validation $1 $2 $3 );then
	if ( (is_integer $1) && (is_integer $2)  );then
        	echo $(($1 * $2))
	fi
fi
}

#is_integer $1
#num_of_arg_validation $1 $2 $3 
multiply $1 $2 $3
