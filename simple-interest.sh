#!/bin/bash

# A script to calculate Simple Interest

# Function to calculate Simple Interest
calculate_simple_interest() {
    principal=$1
    rate=$2
    time=$3

    # Formula for Simple Interest: SI = (P * R * T) / 100
    interest=$(echo "scale=2; ($principal * $rate * $time) / 100" | bc)
    echo "Simple Interest is: $interest"
}

# Input validation and reading inputs
read -p "Enter the Principal amount: " principal
if ! [[ $principal =~ ^[0-9]+(\.[0-9]+)?$ ]]; then
    echo "Invalid Principal amount. Please enter a positive number."
    exit 1
fi

read -p "Enter the Rate of Interest (annual): " rate
if ! [[ $rate =~ ^[0-9]+(\.[0-9]+)?$ ]]; then
    echo "Invalid Rate of Interest. Please enter a positive number."
    exit 1
fi

read -p "Enter the Time (in years): " time
if ! [[ $time =~ ^[0-9]+(\.[0-9]+)?$ ]]; then
    echo "Invalid Time. Please enter a positive number."
    exit 1
fi

# Call the function to calculate Simple Interest
calculate_simple_interest $principal $rate $time
