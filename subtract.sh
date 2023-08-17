subtract() {
local result=$(( $1 - $2 ))
echo "Result: $result"
is_prime "$result" && echo "Prime number"
echo "Number is $(is_odd_even "$result")"
echo "$(is_div_by_five "$result")"
}

subtract $1 $2
