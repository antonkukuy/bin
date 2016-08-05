#!/bin/bash
#!/bin/bash -x

#factor=$1
min_factor=$1
max_factor=$2
min=12
max=23
amount=0
#read count_formulas
count_formulas=120

first ()
{
    clear
    echo
    echo
    echo
    echo
    echo
    echo
    echo
    echo
    echo
    echo
}
answer ()
{
    if [ "$my_answer" != $((number1*number2)) ]; then
        first
        echo "          $number1 x $number2 "|figlet
        echo "Enter new number!"
        echo -n "                       "
        read my_answer
        answer
        #echo "Right answer: $result"
        #echo "Your answer: $answer"
        #read empty
    fi
}
while [ "$amount" -lt "$count_formulas" ]
do
    let "number1 = RANDOM % (($max - $min)) + $min"
    let "number2 = RANDOM % (($max_factor - $min_factor)) + $min_factor"
    #let "number2 = factor"
    #if [ "$number1" == 10 ] || [ "$number2" == 10 ]; then
    if [[ "$number1" == 10  ||  "$number2" == 10 || "$number1" == 11  ||  "$number2" == 11 ]]; then
        continue
    fi
    let "result = number1 * number2"
    first
    echo "          $number1 x $number2 "|figlet
    echo -n "                       "
    #printf("%q x %q",$number1,$number2)|figlet
    read my_answer
    answer
    let "amount += 1"
done
clear

