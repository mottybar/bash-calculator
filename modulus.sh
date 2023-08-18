#!/bin/bash

modulus() {
        local dividend="$1"
        local divisor="$2"
        echo $((dividend % divisor))
}

read -p "enter the dividend: " dividend
read -p "enter the divisor: " divisor

result=$(modulus $dividend $divisor)
echo "result: $result"
