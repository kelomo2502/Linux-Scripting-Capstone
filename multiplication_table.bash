#!/bin/bash

# Function to generate multiplication table
generate_table() {
  local number=$1
  local start=$2
  local end=$3

  # Loop to generate the multiplication table
  for ((i=start; i<=end; i++)); do
    echo "$number x $i = $((number * i))"
  done
}

# Input validation function
is_valid_number() {
  [[ $1 =~ ^[0-9]+$ ]]
}

# Function to display the full table
full_table() {
  echo "Full multiplication table (1-10):"
  generate_table $1 1 10
}

# Main script starts here

# 1. Ask the user to input a number for which the multiplication table will be generated
read -p "Enter a number for which the multiplication table will be generated: " num

# Check if the input is a valid number
if ! is_valid_number "$num"; then
  echo "Invalid input! Please enter a valid number."
  exit 1
fi

# 2. Ask the user if they want a full or partial table
read -p "Do you want a full table (1-10) or partial table (p)? Enter 'f' for full or 'p' for partial: " choice

if [[ "$choice" == "f" ]]; then
  # If full table is chosen, generate and display the full table
  full_table "$num"
elif [[ "$choice" == "p" ]]; then
  # If partial table is chosen, ask for the range
  read -p "Enter the start of the range: " start
  read -p "Enter the end of the range: " end

  # Check if both start and end are valid numbers
  if ! is_valid_number "$start" || ! is_valid_number "$end"; then
    echo "Invalid range input! Defaulting to full table."
    full_table "$num"
    exit 1
  fi

  # 3. Validate the range
  if (( start > end )); then
    echo "Invalid range! Start cannot be greater than end. Displaying full table instead."
    full_table "$num"
  else
    # 4. Generate partial table with valid range
    echo "Partial multiplication table ($start-$end):"
    generate_table "$num" "$start" "$end"
  fi
else
  # If the choice is not 'f' or 'p', it's invalid
  echo "Invalid choice! Displaying full table."
  full_table "$num"
fi
