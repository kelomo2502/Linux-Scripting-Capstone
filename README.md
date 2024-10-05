
# Multiplication Table Bash Script

## Overview

This project is a simple bash script that generates a multiplication table based on user input. It allows the user to choose between generating a **full multiplication table (1-10)** or a **partial table** within a specified range. The script ensures that valid inputs are provided and handles any invalid input cases gracefully by defaulting to a full table.

## Features

- Prompt the user to input a number for which the multiplication table will be generated.
- Option to generate a full multiplication table (from 1 to 10) or a partial table based on user-defined range.
- Validation of input for the number and the range to ensure they are valid integers.
- Error handling for invalid ranges (e.g., start greater than end).
- Generates a clear and readable multiplication table using loops and conditional statements.

## Requirements

- A bash shell to execute the script.
- Ensure that the script is executable by running `chmod +x script_name.sh` in the terminal.

## Script Process Walkthrough

Below is a detailed explanation of how the script works, including screenshots of the prompts and results.

### Step 1: Inputting the Number

The script begins by asking the user to input the number for which the multiplication table will be generated.

```bash
read -p "Enter a number for which the multiplication table will be generated: " num
