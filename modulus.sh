#!/bin/bash

modulus() {
        local dividend="$1"
        local divisor="$2"

        if [[ $divisor != 0 ]]; then
        echo $((dividend % divisor))

        else echo "divisor can't be 0 "
        fi
}
