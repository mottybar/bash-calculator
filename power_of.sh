#!/bin/bash

power_of() {
        local base="$1"
        local exponent="$2"
        local result=1

        for ((i = 1; i <= exponent; i++)); do
        result=$((result * base))
        done

        echo $result
}

read -p "enter the base: " base
read -p "enter the exponent: " exponent

result=$(power_of $base $exponent)
echo "result: $result"
