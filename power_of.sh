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

