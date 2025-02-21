#!/bin/bash
# Starting the environment variables and ensuring they are ready

echo "Starting the Submission_reminder_app ......."

# Checking if the config.env and functions are ready

if [ ! -f "./config/config.env" ]; then
    echo  "Error: config.env not found. Please make sure it's in the config/ directory."
    exit 1
fi

if [ ! -f "./modules/functions.sh" ]; then
    echo "Error: functions.sh not found. Please make sure it's in the modules/ directory."
    exit 1
fi

# These are sources for config and functions

source ./config/config.env
source ./modules/functions.sh

# Checking if submissions.txt exists

if [ ! -f "./assets/submissions.txt" ]; then
    echo "Error: submissions.txt not found in the assets/ directory."
    exit 1
fi

# Executing submission_reminder_app (by calling reminder.sh)

echo "Submission_reminder_app is starting now ..."

# Correcting the script execution path
bash ./app/reminder.sh  # Ensure this path is correct


