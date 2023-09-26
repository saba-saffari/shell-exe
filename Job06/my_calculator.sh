#!/bin/bash

num1="$1"
operator="$2"
num2="$3"

if [ "$operator" == "+" ]; then
    result=$((num1 + num2))
elif [ "$operator" == "-" ]; then
    result=$((num1 - num2))
elif [ "$operator" == "x" ]; then
    result=$((num1 * num2))
elif [ "$operator" == "/" ]; then
     result=$((num1 / num2))

else
    echo "Utilisez '+' ou '-' ou 'x' ou '/'."
fi

echo "Result: $result"