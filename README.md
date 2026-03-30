# 🐧 The Open Source Audit — Git

![Bash](https://img.shields.io/badge/Language-Bash-4EAA25?style=flat&logo=gnu-bash&logoColor=white)
![Platform](https://img.shields.io/badge/Platform-Linux-FCC624?style=flat&logo=linux&logoColor=black)
![License](https://img.shields.io/badge/License-MIT-blue?style=flat)

## 👨‍🎓 Student Details
* **Name:**  
* **Registration Number:** 

## 📖 Project Description
Welcome to my capstone project! I decided to focus on **Git** for this assignment. Git is a distributed version control system that pretty much runs the modern software world. I chose it because even though I use it practically every day to save my code, I don't think I ever really appreciated *how* it works or the philosophy behind it. It's a perfect example of how open-source developers scratching their own itch can end up changing how everyone collaborates.

This repository contains five shell scripts that demonstrate different Linux concepts we've learned, all tied back to checking out our system and understanding FOSS (Free and Open Source Software).

---

## 🛠️ Scripts Overview

| File Name | Description | Key Concepts Used |
| :--- | :--- | :--- |
| **`01_system_identity.sh`** | Prints out info about the current Linux machine (distro, kernel, uptime) and a note about the GPL. | Variables, command substitution, echo formatting |
| **`02_package_inspector.sh`** | Checks if Git is installed using `dpkg` and shares fun facts about popular open-source projects. | `if-else`, `case` statements, piping with `grep` |
| **`03_disk_auditor.sh`** | Loops through main system folders `/etc`, `/var/log` to check sizes, permissions. Checks `~/.gitconfig`. | `for` loop, `awk`, `cut`, file test operators |
| **`04_log_analyzer.sh`** | Scans any log file for a specific keyword (defaults to "error"), counts occurrences, shows last 5 matches. | `while-read` loop, command-line `$1`, counters |
| **`05_manifesto_generator.sh`** | Interactively asks questions about software and generates a custom open-source manifesto text file. | Read input, file redirection (`>>`), aliases |

---

## 🚀 How to Run the Scripts

To run these on your own machine, you'll need to make them executable first. Open up your terminal in the project directory and follow these steps:

### 1. Make all scripts executable
Run this command once to give the scripts permission to execute:
```bash
chmod +x *.sh
```

### 2. Execute the scripts
Run whichever script you want by typing `./` right before the script name.

**Running Script 1, 2, 3, or 5:**
```bash
./01_system_identity.sh
./02_package_inspector.sh
./03_disk_auditor.sh
./05_manifesto_generator.sh
```

**Running Script 4 (Log Analyzer):**
The log analyzer requires you to pass a file to read. You can optionally pass a second keyword argument (it searches for "error" by default).
```bash
# Basic usage (searches for "error")
./04_log_analyzer.sh /var/log/syslog

# Custom usage (searches for "fail")
./04_log_analyzer.sh /var/log/syslog fail
```

---

## 🖥️ Requirements
* A Linux-based operating system (Tested on Ubuntu)
* The Bash shell
* Standard GNU core utilities installed (like `awk`, `grep`, `dpkg`, and `cut`)

---

## 📋 Sample Output 
Here is a quick text example of what `01_system_identity.sh` looks like when you run it:
```text
===================================================
       Welcome to My Open Source Audit
===================================================

Here's what this system looks like under the hood:
Distro Info   : Ubuntu 22.04.3 LTS
Kernel Version: 5.15.0-88-generic
Logged in as  : student
Home folder   : /home/student
Uptime        : up 2 hours, 15 minutes
```

---



---

## 🎯 Conclusion
Working on these scripts helped me get more comfortable with the Linux command line. Before this, writing a bash script felt super intimidating, but breaking things
