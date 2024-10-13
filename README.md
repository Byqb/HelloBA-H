# HelloSriptBA$H

## System Status Report Script

This tutorial will guide you through using the System Info Script, a Bash script that provides various system information and diagnostics.

## Prerequisites

Ensure you have a Unix-like operating system with Bash installed.

## Follow On-Screen Prompts
The script will display various information and prompt you for input. Here’s what to expect:

## Greeting Message
Upon execution, the script will greet you and display the hostname of your system.

## Current Time and User Info
The script will report the current time and provide information about the user executing the script.

## System Uptime
You will see how long your machine has been running, along with the exact time it started.

## File Count
The script will count the number of files in the current directory and display that count.

## Disk Usage Check
The script checks the disk usage. If it exceeds 90%, you will receive a warning.

## Random Password Generation
A random password will be generated for your use.

## User Input
You will be prompted to enter your first and last name, and the script will greet you using that information.

## Menu Options
Finally, the script will present a menu with options to:

- Display System Info
- Display Hostname
- Display File List
-Simply enter the number corresponding to your choice.

## Interacting with Menu
After selecting an option from the menu, the script will display the requested information.


# Summary of Commands in System Info Script

This section provides a brief overview of the key commands used in the System Info Script, explaining their purpose.

# Commands Overview

1. **Echo Command**
   - `echo "Hello World This is $HOSTNAME."`
     - Displays a greeting message with the hostname.

2. **Date Command**
   - `TIME=$(date)`
     - Captures the current date and time.

3. **Uptime Command**
   - `uptime`
     - Shows how long the system has been running.

4. **File Count**
   - `file_Count=$(ls | wc -l)`
     - Counts the number of files in the current directory.

5. **Disk Usage**
   - `Disk=$(df -h)`
     - Retrieves disk usage information in a human-readable format.

6. **System Information**
   - `SystemInfo=$(uname -a)`
     - Displays detailed system information, including the kernel version.

7. **User Information**
   - `UserName=$(whoami)`
     - Gets the name of the currently logged-in user.

8. **Process List**
   - `ProscessList=$(ps aux)`
     - Lists all running processes.

9. **Disk Space Alert**
   - Checks disk usage and alerts if it exceeds 90%:
     ```bash
     if [ "$current_usage" -ge "$threshold" ]; then
         echo "Disk space is running low!"
     else
         echo "Disk space is okay."
     fi
     ```

10. **Random Password Generation**
    - `Pass=$(tr -dc 'A-Za0-9!?%=' < /dev/urandom | head -c 10)`
      - Generates a random password using /dev/urandom.

11. **User Input**
    - `read F_N` and `read L_N`
      - Prompts the user for their first and last names.

12. **Menu Options**
    - Uses a `case` statement to display selected system information based on user input.

# Summary of System Info Script

The **System Info Script** is a Bash script designed to provide essential system information and diagnostics. It is a useful tool for system administrators and users who need quick access to system details.

## Key Features

- **Greeting Message:** Displays a personalized message with the hostname.
- **Current Time:** Reports the current date, time, and user information.
- **System Uptime:** Shows how long the system has been running.
- **File Count:** Counts and displays the number of files in the current directory.
- **Disk Usage Check:** Alerts if disk usage exceeds 90%.
- **Random Password Generation:** Generates a random password.
- **User Input:** Prompts for the user's first and last name for a personalized greeting.
- **Menu Options:** Allows selection of specific system information to display.



This script is ideal for quick checks and can be customized further to meet specific user needs.

## Conclusion
These commands together create a comprehensive system information tool, providing valuable insights into system status and user details.
You have now successfully used the System Info Script! Feel free to explore and modify the script for your needs. If you encounter any issues or have suggestions, consider contributing to the project.


License
This project is licensed under the MIT License.
