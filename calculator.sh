#!/bin/bash 

:

#########################################################

add() {
result=$(( $1 + $2 ))
#echo "Result: $result"
#is_prime "$result" && echo "Prime number"
#echo "Number is: $(is_odd_even "$result")"
#echo "$(is_div_by_five "$result")"
echo $result
}

is_div_by_five() {
local num="$1"
if (($((num % 5)) == 0))  ;
then
echo "Divisible by five"
else
echo "Not divisible by five"
fi
}


is_odd_even() {
num="$1"
if (($((num % 2)) == 0))
then
echo "even"
else
echo "odd"
fi
}

subtract() {
local result=$(( $1 - $2 ))
echo "$result"

}

##########################################################################

power_of() {
        local base="$1"
        local exponent="$2"
        local result=1

        for ((i = 1; i <= exponent; i++)); do
        result=$((result * base))
        done

        echo $result
}




modulus() {
        local dividend="$1"
        local divisor="$2"

        if [[ $divisor != 0 ]]; then
        echo $((dividend % divisor))

        else echo "divisor can't be 0 "
        fi
}


num_of_arg(){
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
if [[ $1 =~ ^-?[0-9]+$ ]];then
	#echo "$1 is integer"
	return 0
else
	#echo "$1 isn't integer"
	return 1
fi
}

######################################################################

multiply() {
if ( num_of_arg $1 $2 $3 );then
	if ( (is_integer $1) && (is_integer $2)  );then
        	echo $(($1 * $2))
	fi
fi
}

divide(){

		if (( $2 != 0 )) ;then  # check if the second argument is not 0 
                	echo $(($1 / $2))
		else
			echo "cannot divide by 0"
		fi
  
}



is_prime(){
num=$1
is_prime=0
if [[ $num -le 1 ]];then
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



#################################################33333

menu () {
echo "a. Add"
echo "b. Subtract"
echo "c. Multiply"
echo "d. Divide"
echo "e. Power of"
echo "f. Modulos"
echo "g. Exit"
echo "choose from (a/b/c/d/e/f/g)"
 
}



while true; do
   
        echo "================================================================"
        menu
        read choice
           case $choice in
            "a"|"b"|"c"|"d"|"e"|"f")  
            read -p "Enter first number: " num1
            read -p "Enter second number: " num2
            
                if  is_integer $num1 && is_integer $num2 ; then

                    case $choice in
                        "a") res=$(add $num1 $num2) ;;
                        "b") res=$(subtract $num1 $num2) ;;
                        "c")  res=$(multiply $num1 $num2) ;;
                        "d") res=$(divide $num1 $num2) ;;
                        "e")  res=$(power_of $num1 $num2)  ;;
                        "f")  res=$(modulus $num1 $num2) ;;
                #"g")  exit 0 ;;
                #*) echo "Invalid choice!" ;;
        esac

        echo "================================================================"
        echo "Result: $res"
        is_prime $res
        is_odd_even $res
       is_div_by_five $res



   else 
   echo "please enter two Integers  "
   echo "================================"
fi ;;
"g")
echo "Byeeee"
 exit 0 ;; 
*) echo "Invalid choice!" ;; 
esac
    ### the output ###

   #   echo "Result: $result"
   # is_prime $result
   # is_odd_even $result
   #  is_div_by_five $result
done