# Open Source Software Capstone Project

## Project Details
- Course: Open Source Software (NGMC)
- Student: Richa Sharma
- Registration: 24BCY10067
- Date: March 31, 2026

## Project Overview
This project analyzes Git as an open source software and includes practical shell scripts for system auditing on Linux.

## Repository Contents

| File | Description |
|------|-------------|
| OSSCapstoneProject(final).pdf | Complete project report (23 pages) |
| system_identity.sh | Script 1 - Displays system information |
| package_inspector.sh | Script 2 - Checks installed packages |
| disk_auditor.sh | Script 3 - Audits directories and permissions |
| log_analyzer.sh | Script 4 - Analyzes log files for keywords |
| manifesto_generator.sh | Script 5 - Generates open source manifesto |

## How to Run the Scripts

Prerequisites:
- Linux environment (Ubuntu on WSL or native Linux)
- Bash shell

Steps:

1. Clone the repository:
   git clone https://github.com/sharmarichaa/oss-capstone-project.git
   cd oss-capstone-project

2. Make scripts executable:
   chmod +x *.sh

3. Run any script:
   ./system_identity.sh
   ./package_inspector.sh
   ./disk_auditor.sh
   ./log_analyzer.sh /var/log/syslog "error"
   ./manifesto_generator.sh

## Scripts Explained

1. System Identity Report (system_identity.sh)
   - Displays OS distribution, kernel version, current user, home directory, system uptime, and current date/time
   - Shows GNU GPL license notice

2. FOSS Package Inspector (package_inspector.sh)
   - Checks if Git is installed on the system
   - Shows package version and status using dpkg
   - Prints philosophy note about the software

3. Disk and Permission Auditor (disk_auditor.sh)
   - Audits system directories: /etc, /var/log, /home, /usr/bin, /tmp
   - Shows permissions, owner, group, and size for each directory

4. Log File Analyzer (log_analyzer.sh)
   - Takes filename and keyword as command-line arguments
   - Counts how many times the keyword appears in the log file
   - Displays the last 5 matching lines

5. Open Source Manifesto Generator (manifesto_generator.sh)
   - Interactive script that asks the user questions
   - Generates a personalized open source manifesto
   - Saves output to a text file

## Technologies Used
- Bash Shell Scripting
- Linux (Ubuntu on WSL)
- Git
- GPL v2

## Key Learnings
- Understanding of open source philosophy and licenses
- Practical Linux system administration commands
- Shell scripting for system automation
- Git's origin and impact on software development

## References
- GNU Project: gnu.org/philosophy/free-sw.html
- Open Source Initiative: opensource.org/osd
- The Linux Command Line by William Shotts

## Author
Richa Sharma (24BCY10067)
Slot: A13
