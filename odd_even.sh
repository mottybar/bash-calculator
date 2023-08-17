#!/bin/bash
is_odd_even() {
num="$1"
if (($((num % 2)) == 0))
then
echo "even"
else
echo "odd"
fi
}

is_odd_even $1
