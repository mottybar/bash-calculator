is_div_by_five() {
local num="$1"
if (($((num % 5)) == 0))
then
echo "Divisible by five"
else
echo "Not divisible by five"
fi
}

is_div_by_five $1
