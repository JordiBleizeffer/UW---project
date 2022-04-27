#!/usr/bin/env bash

echo "Welcome to the guessing game"
echo "Here you will try to guess the number"
echo "files there are in the current directory"

function ask {
    echo "How many files do you think there are?"
    read number
    filenumber=$(ls -l |grep "^-"|wc -l)
}

ask

while [[ $filenumber -ne $number ]]
do
    if [[ $number -gt $filenumber ]] 
    then
        echo "Your guess is high. Try again!"
    else
        echo "Your guess is low. Try again!"
    fi
    ask
done

echo "You got it right!"
echo "The number of files was $filenumber"
ls -1