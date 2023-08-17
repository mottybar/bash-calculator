#!/bin/bash 



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
   
    
   # select choice in "Add" "Subtract" "Multiply" "Divide" "Power of" "Modulus" "End"; do
        menu
        read choice
        case $choice in
            "a")
                read -p "Enter first number: " num1
                read -p "Enter second number: " num2
                result=$(add $num1 $num2)
                
                ;;
            "b")
                read -p "Enter first number: " num1
                read -p "Enter second number: " num2
                result=$(subtract $num1 $num2)
                
                ;;
            "c")
                read -p "Enter first number: " num1
                read -p "Enter second number: " num2
                result=$(multiply $num1 $num2)
                
                ;;
            "d")
                read -p "Enter dividend: " num1
                read -p "Enter divisor: " num2
                result=$(divide $num1 $num2)
                
                ;;
            "e")
                read -p "Enter base number: " num1
                read -p "Enter exponent: " num2
                result=$(power_of $num1 $num2)
                
                ;;
            "f")
                read -p "Enter first number: " num1
                read -p "Enter second number: " num2
                result=$(modulus $num1 $num2)
                
                ;;
            "g")
               
                exit 0
                ;;
            *)
                echo "Invalid choice!"
                ;;
        esac
   # done

    ### the output ###
    echo "Result: $result"
    is_prime $result
    is_odd_even $result
     is_div_by_five $result
done