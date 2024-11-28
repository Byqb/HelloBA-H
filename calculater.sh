#!/bin/bash

# Function for addition
add() {
    echo "$(($1 + $2))"
}

# Function for subtraction
subtract() {
    echo "$(($1 - $2))"
}

# Function for multiplication
multiply() {
    echo "$(($1 * $2))"
}

# Function for division
divide() {
    if [ "$2" -eq 0 ]; then
        echo -e "\033[1;31mError: Division by zero!\033[0m"
    else
        echo "$(($1 / $2))"
    fi
}

# Function to print a header
print_header() {
    echo -e "\033[1;34m=============================\033[0m"
    echo -e "\033[1;32m Simple Bash Calculator \033[0m"
    echo -e "\033[1;34m=============================\033[0m"
}

# Main loop for continuous operations
while true; do
    # Print header
    print_header

    # Show menu
    echo -e "\033[1;33mChoose an operation:\033[0m"
    echo "1. Add"
    echo "2. Subtract"
    echo "3. Multiply"
    echo "4. Divide"
    echo "5. Exit"
    
    # Read user input for operation
    read -p "Enter your choice (1-5): " operation
    
    # Exit condition
    if [[ "$operation" -eq 5 ]]; then
        echo -e "\033[1;32mThank you for using the calculator! Goodbye!\033[0m"
        break
    fi

    # Input numbers
    read -p "Enter first number: " num1
    read -p "Enter second number: " num2

    # Validate that inputs are numbers
    if ! [[ "$num1" =~ ^-?[0-9]+([.][0-9]+)?$ ]] || ! [[ "$num2" =~ ^-?[0-9]+([.][0-9]+)?$ ]]; then
        echo -e "\033[1;31mInvalid input. Please enter valid numbers.\033[0m"
        continue
    fi

    # Perform the operation based on user's choice
    case $operation in
        1)
            result=$(add $num1 $num2)
            echo -e "\033[1;36mResult: $result\033[0m"
            ;;
        2)
            result=$(subtract $num1 $num2)
            echo -e "\033[1;36mResult: $result\033[0m"
            ;;
        3)
            result=$(multiply $num1 $num2)
            echo -e "\033[1;36mResult: $result\033[0m"
            ;;
        4)
            result=$(divide $num1 $num2)
            echo -e "\033[1;36mResult: $result\033[0m"
            ;;
        *)
            echo -e "\033[1;31mInvalid option. Please choose between 1 and 5.\033[0m"
            ;;
    esac

    # Ask the user if they want to continue
    echo -e "\n\033[1;33mDo you want to perform another operation? (y/n)\033[0m"
    read -p "Enter y to continue or n to exit: " continue_choice
    if [[ "$continue_choice" != "y" ]]; then
        echo -e "\033[1;32mThank you for using the calculator! Goodbye!\033[0m"
        break
    fi

done
