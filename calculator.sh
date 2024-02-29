#!/bin/bash

echo "Calculate 2 numbers"
echo "First number:"
read num1

# Fixed regex for floating point validation and loop for re-prompt
while ! [[ "$num1" =~ ^-?[0-9]+(\.[0-9]+)?$ ]]; do
    echo "ERROR: Please enter a number"
    echo "First number:"
    read num1
done

echo "Second number:"
read num2

# Repeating the validation for the second number
while ! [[ "$num2" =~ ^-?[0-9]+(\.[0-9]+)?$ ]]; do
    echo "ERROR: Please enter a number"
    echo "Second number:"
    read num2
done

echo "Please enter an operator (+, -, *, /, **):"
read op

# Using case statement for cleaner syntax and adding division by zero check
case $op in
    +)
        result=$(echo "$num1 + $num2" | bc)
        echo "The sum of $num1 and $num2 is: $result"
        ;;
    -)
        result=$(echo "$num1 - $num2" | bc)
        echo "$num1 minus $num2 is: $result"
        ;;
    '*'|x)
        result=$(echo "$num1 * $num2" | bc)
        echo "$num1 X $num2 is: $result"
        ;;
    /)
        if [[ "$num2" == "0" ]]; then
            echo "Cannot divide by 0"
        else
            result=$(echo "scale=2; $num1 / $num2" | bc)
            echo "$num1 divided by $num2 is: $result"
        fi
        ;;
    '**'|e)
        result=$(echo "$num1 ^ $num2" | bc)
        echo "$num1 to the power of $num2 is: $result"
        ;;
    *)
        echo "$op is not a valid operator for $num1 and $num2"
        ;;
esac

