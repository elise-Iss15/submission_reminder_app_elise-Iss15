#!/bin/bash
# This script sets up a submission reminder application.

# Ask for user's name and remove spaces to avoid directory name issues.
echo "Enter your name:"
read -r user_name
user_name=$(echo "$user_name" | tr -d ' ')

# Define the parent directory dynamically
submission_reminder_app="submission_reminder_${user_name}"
mkdir -p "$submission_reminder_app"

# Navigate to the directory or exit if it fails
 
cd "$submission_reminder_app" ||{ echo "Failed to change directory! Exiting..."; exit 1; }

# Create subdirectories
for subdir in app modules assets config; do
    mkdir -p "$subdir"
done

#create files inside subdirectories

touch config/config.env
touch modules/functions.sh
touch assets/submissions.txt
touch app/reminder.sh


# Define the source directory for copying files (Downloads folder)
download_dir="$HOME/Downloads"

# Copy files from Downloads if they exist
for file in reminder.sh functions.sh submissions.txt config.env; do
    src="$download_dir/$file"
    dest="$(find . -name "$file" -print -quit)"  # Find the correct location dynamically

    if [ -f "$src" ] && [ -n "$dest" ]; then
        cp "$src" "$dest"
        echo "Copied $file from Downloads."
    else
        echo "Warning: $file is not found in Downloads!"
    fi
done

# Ensure scripts are executable
chmod u+x app/reminder.sh modules/functions.sh config/config.env


# Confirm successful setup
echo "Submission reminder app setup completed successfully in directory: $submission_reminder_ap"

