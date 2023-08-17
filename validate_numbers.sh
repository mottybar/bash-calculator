if [[ $# -ne 2 ]]; then  

echo "please brovide 2 numbers "

elif ! [[ $1 =~ ^-?[0-9]+$ ]] || ! [[ ! $2 =~ ^-?[0-9]+$ ]]; then

echo "please brovide 2 numbers" 

else 

#### Valid args #####
fi