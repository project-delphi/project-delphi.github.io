#!/usr/bin/bash

compare_guess() {
    local guess=$1
    local answer=$2
    re='^[0-9]+$'
    if ! [[ $guess =~ $re ]]; then
        echo 'Your guess is not a non-negative number, try again: '
        comparsion=2
    else
        if [ $guess -eq $answer ]; then
            echo $'Congratulations. You won the game. It has now ended. \n'
            comparsion=0
        elif [ $guess -lt $answer ]; then
            echo $'Your guess is low, guess again with a higher number: '
            comparsion=-1
        elif [ $guess -gt $answer ]; then
            echo $'Your guess is high, guess again with a lower number: '
            comparsion=1
        fi
    fi
}

answer=$(ls -1 | wc -l)
echo $'\n####################################################\n'
echo 'Guess how many files are in the current directory: '
read guess
comparsion=100
while true; do
    compare_guess ${guess} ${answer}
    if [ $comparsion -eq 0 ]; then
        break
    fi
    read guess
done
echo "###################################################"
