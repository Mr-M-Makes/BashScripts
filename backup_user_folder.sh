#! /bin/bash

#timestamp=$(date +"%Y-%m-%d %H:%M:%S")
#echo "$timestamp: INFO: Starting backup" >> /path/to/logfile.txt




# Variable Naming Conventions
# Uppercase for Environment Variables: By convention, environment variables are in uppercase.

# Good: PATH, USER
# Avoid: Path, user

# Lowercase for Script Variables: Local script variables are usually in lowercase.

# Good: username, file_path
# Avoid: Username, FilePath

# Avoid Using Reserved Words: Avoid using Bash reserved words like if, else, fi, do, done, etc., as variable names.

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