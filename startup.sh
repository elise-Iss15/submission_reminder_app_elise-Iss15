#!/bin/bash
# Start the reminder application

echo "Starting the Submission_reminder_app ......."

# Check for required files
if [ ! -f "./config/config.env" ]; then
    echo "Error: config.env not found. Please make sure it's in the config/ directory."
    exit 1
fi

if [ ! -f "./modules/functions.sh" ]; then
    echo "Error: functions.sh not found. Please make sure it's in the modules/ directory."
    exit 1
fi

# Source configuration and functions
source ./config/config.env
source ./modules/functions.sh

# Check if submissions.txt exists
if [ ! -f "./assets/submissions.txt" ]; then
    echo "Error: submissions.txt not found in the assets/ directory."
    exit 1
fi

# Executing the reminder application
echo "Starting Submission_reminder_app..."

bash ./app/reminder.sh

