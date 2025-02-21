#!/bin/bash

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
PROJECT_ROOT="$(cd "$SCRIPT_DIR/.." && pwd)"

# Check if the correct config and functions file exists before sourcing
CONFIG_FILE="$PROJECT_ROOT/config/config.env"
FUNCTIONS_FILE="$PROJECT_ROOT/modules/functions.sh"

if [ ! -f "$CONFIG_FILE" ]; then
    echo "Error: Config file not found at $CONFIG_FILE"
    exit 1
fi
source "$CONFIG_FILE"

if [ ! -f "$FUNCTIONS_FILE" ]; then
    echo "Error: Functions file not found at $FUNCTIONS_FILE"
    exit 1
fi
source "$FUNCTIONS_FILE"

# Path to the submissions file
submissions_file="$PROJECT_ROOT/assets/submissions.txt"

# Print remaining time and run the reminder function
echo "Assignment: $ASSIGNMENT"
echo "Days remaining to submit: $DAYS_REMAINING days"
echo "--------------------------------------------"

check_submissions "$submissions_file"

