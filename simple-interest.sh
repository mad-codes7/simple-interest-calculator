#!/usr/bin/env bash

# Simple Interest Calculator
# Formula: Simple Interest = (Principal * Rate * Time) / 100

read -p "Enter the principal amount: " principal
read -p "Enter the rate of interest (per annum): " rate
read -p "Enter the time period (in years): " time

# Validate numeric input
if ! [[ "$principal" =~ ^[0-9]+([.][0-9]+)?$ ]] || \
   ! [[ "$rate" =~ ^[0-9]+([.][0-9]+)?$ ]] || \
   ! [[ "$time" =~ ^[0-9]+([.][0-9]+)?$ ]]; then
    echo "Error: Please enter valid non-negative numeric values."
    exit 1
fi

simple_interest=$(awk -v p="$principal" -v r="$rate" -v t="$time" \
    'BEGIN { printf "%.2f", (p * r * t) / 100 }')

echo "Simple Interest: $simple_interest"