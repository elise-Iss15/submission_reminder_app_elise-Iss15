#!/bin/bash
# Starting the environment variables and ensuring they are ready

echo "Starting the Submission_reminder_app ......."

# Define the project root (modify if needed)
PROJECT_ROOT="$(pwd)"

# Checking if the config.env and functions.sh are ready
CONFIG_FILE="$PROJECT_ROOT/submission_reminder_Elyse/config/config.env"
FUNCTIONS_FILE="$PROJECT_ROOT/submission_reminder_Elyse/modules/functions.sh"
SUBMISSIONS_FILE="$PROJECT_ROOT/submission_reminder_Elyse/assets/submissions.txt"
REMINDER_SCRIPT="$PROJECT_ROOT/submission_reminder_Elyse/app/reminder.sh"

#checking if config.env exists
echo "Checking for: $CONFIG_FILE"

if [ ! -f "$CONFIG_FILE" ]; then
    echo "Error: config.env not found at $CONFIG_FILE."
    exit 1
fi

# define sources for config
source "$CONFIG_FILE"

#load config.env
echo "config.env loaded successfully."

#checking if functions.sh exists
echo "Checking for: $FUNCTIONS_FILE"

if [ ! -f "$FUNCTIONS_FILE" ]; then
    echo "Error: functions.sh not found in the modules/ directory."
    exit 1
fi

# define sources for functions.sh
source "$FUNCTIONS_FILE"

#checking if submissions.txt exists
echo "Checking for: $SUBMISSIONS_FILE"

if [ ! -f "$SUBMISSIONS_FILE" ]; then
    echo "Error: submissions.txt not found in the assets/ directory."
    exit 1
fi

# Executing submission_reminder_app (by calling reminder.sh)
echo "Submission_reminder_app is starting now ..."
bash "$REMINDER_SCRIPT"

