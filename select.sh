#!/bin/bash 


while true; do
    echo "Enter your choice (1-7): "
    
    select choice in "Add" "Subtract" "Multiply" "Divide" "Power of" "Modulus" "End"; do
        case $choice in
            "Add")
                read -p "Enter first number: " num1
                read -p "Enter second number: " num2
                result=$(add $num1 $num2)
                break
                ;;
            "Subtract")
                read -p "Enter first number: " num1
                read -p "Enter second number: " num2
                result=$(subtract $num1 $num2)
                break
                ;;
            "Multiply")
                read -p "Enter first number: " num1
                read -p "Enter second number: " num2
                result=$(multiply $num1 $num2)
                break
                ;;
            "Divide")
                read -p "Enter dividend: " num1
                read -p "Enter divisor: " num2
                result=$(divide $num1 $num2)
                break
                ;;
            "Power of")
                read -p "Enter base number: " num1
                read -p "Enter exponent: " num2
                result=$(power_of $num1 $num2)
                break
                ;;
            "Modulus")
                read -p "Enter first number: " num1
                read -p "Enter second number: " num2
                result=$(modulus $num1 $num2)
                break
                ;;
            "End")
               
                exit 0
                ;;
            *)
                echo "Invalid choice!"
                ;;
        esac
    done

    echo "Result: $result"
    is_prime $result
    is_odd_even $result
     is_div_by_five $result
done