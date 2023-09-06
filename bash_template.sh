#! /bin/bash

#timestamp=$(date +"%Y-%m-%d %H:%M:%S")
#echo "$timestamp: INFO: Starting backup" >> /path/to/logfile.txt


# Good: backup_database.sh
# Avoid: script1.sh
# Use Underscores to Separate Words: It's common to use underscores instead of spaces or hyphens to make the script name more readable.

# Good: generate_report.sh
# Avoid: generatereport.sh or generate-report.sh
# Extension: Though not strictly required, it's common to use the .sh extension to indicate that a file is a Bash script.

# Good: install_packages.sh
# Avoid: install_packages
# Avoid Special Characters: Avoid special characters like !, @, #, $, etc., as they can be interpreted by the shell.

# Good: parse_logs.sh
# Avoid: parse@logs.sh
# Variable Naming Conventions
# Uppercase for Environment Variables: By convention, environment variables are in uppercase.

# Good: PATH, USER
# Avoid: Path, user
# Lowercase for Script Variables: Local script variables are usually in lowercase.

# Good: username, file_path
# Avoid: Username, FilePath
# Descriptive Names: Similar to script names, variable names should also be descriptive.

# Good: backup_folder, retry_count
# Avoid: bf, rc
# No Spaces or Hyphens: Bash variable names should not contain spaces or hyphens.

# Good: user_id
# Avoid: user id, user-id
# Avoid Using Reserved Words: Avoid using Bash reserved words like if, else, fi, do, done, etc., as variable names.

# Use Underscores for Multi-Word Names: Use underscores to separate words in variable names for readability.

# Good: total_count
# Avoid: totalcount or TotalCount
# Constants in Uppercase: If your script has constants, you can use uppercase to make it clear they shouldn't be changed.

# Good: MAX_RETRIES=5
# Function Naming Conventions
# Lowercase: Like script names and local variable names, function names are usually in lowercase.

# Good: generate_report
# Avoid: GenerateReport
# Descriptive Names: Function names should be descriptive and reflect what the function does.

# Good: calculate_sum
# Avoid: func1
# Use Underscores for Readability: For multi-word function names, use underscores for readability.

# Good: print_error_message
# Avoid: printerrormsg