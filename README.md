# Open Source Audit Project – Python

## Student Details
Name: Devarakonda Manishankar  
Registration Number: 24MIM10251  
Course: Open Source Software  

## Chosen Software
Python

## About This Project
This project is a small audit of Python as an open source software.  
The aim of the work is to understand how open source tools function in a Linux environment and to demonstrate basic shell scripting skills.

Python was selected because it is simple, widely used, and supported by a large community. It is also easy to explore on a Linux system.

## Scripts Included

### 1. System Identity Report
This script displays basic information about the system such as user name, home directory, kernel version, uptime, and current date.  
It acts like a simple welcome screen for the system.

### 2. FOSS Package Inspector
This script checks whether Python is installed on the system.  
If it is installed, it shows basic package details.  
It also prints a short description using a case statement.

### 3. Disk and Permission Auditor
This script goes through important directories like`/etc`,`/home`,`/usr/bin`,and`/var/log`.  
It displays their size along with permissions and ownership details.

### 4. Log File Analyzer
This script reads a log file provided by the user and counts how many times a keyword (default:"error") appears.  
It helps in basic log analysis.

### 5. Open Source Manifesto Generator
This script asks the user a few simple questions and generates a short statement about open source philosophy.  
The output is saved into a text file.

## How to Run the Scripts
1. Open terminal in the project folder  
2. Give execute permission:
      chmod +x *.sh

3. Run any script:
     ./script1_system_info.sh

For log analyzer:
     ./script4_log_analyzer.sh /var/log/syslog

## Requirements
- Linux system (Ubuntu or similar)
- Bash shell
- Basic terminal access

## Notes
- All scripts are written using basic shell scripting concepts like variables,loops,conditionals,and input/output.
- Each script is simple and focused on understanding rather than complexity.

## Conclusion

This project helped in understanding how open source software like Python works in a real Linux environment.  
It also improved practical skills in shell scripting and system-level interaction.
