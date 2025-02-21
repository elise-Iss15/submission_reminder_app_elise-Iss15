# Submission Reminder App

This App will enable facilitators to track assignment submissions and help them know those who have not submitted their work yet.

## Installation & Setup

1. Clone the repository (if needed) or download the script.
2. Run the `create_environment.sh` script to set up the necessary directory structure and files:
   ```bash
   chmod +x create_environment.sh
  ./create_environment.sh
   ```

## Directory Structure(how the directory is laid out)# Submission Reminder App

README.md  create_environment.sh*  startup.sh*  submission_reminder_Elyse/

./submission_reminder_Elyse:
app/  assets/  config/  modules/

./submission_reminder_Elyse/app:
reminder.sh*

./submission_reminder_Elyse/assets:
submissions.txt

./submission_reminder_Elyse/config:
config.env

./submission_reminder_Elyse/modules:
functions.sh*

## Running the Application

1. Navigate into the newly created directory:
   ```bash
   cd submission_reminder_<your_username>/
   ```
2. Run the startup script:
   ```bash
./startup.sh
   ```

## Features


Reminder Script (reminder.sh): Reads envirnment variables and student submission data, then sends reminders to students who haven’t submitted.
Functions Script (functions.sh): Contains helper functions, including 'check_submissions', which checks 'submissions.txt' for incomplete submissions.
Configuration File (config.env): Stores the assignment name and submission deadline.


## Example Data (`submissions.txt`)
Ifeomelu, Git, submitted
Kelly, Shell Navigation, not submitted
  


