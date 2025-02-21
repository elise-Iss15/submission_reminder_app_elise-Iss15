# submission_reminder_app_Elise-Iss15

## Overview
This app is built to help educators follow up with students' submissions for their assignments and send reminders to those who haven't submitted their work. The app creates a directory structure with necessary files and scripts to facilitate the process.

## Directory Structure
submission_reminder_<username>/ ├── app/ │ └── reminder.sh ├── modules/ │ └── functions.sh ├── assets/ │ └── submissions.txt ├── config/ │ └── config.env └── startup.sh

bash
Copy
Edit

## Installation
1. Run the provided bash script to set up the directory structure and necessary files:
    ```bash
    ./setup.sh
    ```
## Use

### Provide your name
When you run the setup script, it will ask your surname to personalize the directory:
`` `Bash
Echo "Enter your name:"
Read user_name
create directory
Script Submission_reminder_ <User_name> will make a directory:

Bash
Copy
edit
Parent_Dir = "Submission_minder _ $ {name}"
Mkdir -P $ Dir/
Startup script
Navigate on submission_reminder_ <User_name> Directory.
Run Startup.Sh Script to start the reminder app when executed: Run:
Bash
Copy
edit
./startup.sh
Reminder script (reminder.
The reminder .SH script app is located in the subductory.
It reads environmental variables and supportive functions, prints the remaining time, and runs the Check_Submissions function.
Bash
Copy
edit
./app/reminder.sh
Functions script (function.)
Functions.Sh script module is located in the subductory.
This includes check_submission function, which reads submission.
Bash
Copy
edit
./Modules/functions.sh
Configuration file (config.env)
Config.env file is located in Config Subdirectory.
This includes the name of the assignment and the number of remaining days for submission:
Bash
Copy
edit
Assignment = "Shell Navigation"
Days_remaining = 2
Submission file
Submission.TXT file assets are located in the subductory.
