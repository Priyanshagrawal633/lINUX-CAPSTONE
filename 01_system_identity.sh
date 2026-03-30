#!/bin/bash
# Script 1: System Identity Report
# Author: Mausam Kar | Course: Open Source Software

# --- Variables ---
STUDENT_NAME="Priyansh Agrawal" # Fill in your name
SOFTWARE_CHOICE="Git" # Fill in your chosen software

# --- System info ---
KERNEL=$(uname -r)
USER_NAME=$(whoami)
UPTIME=$(uptime -p)
DISTRO=$(uname -o)
HOME_DIR=$HOME
CURRENT_DATE=$(date)

# --- Display ---
echo "================================"
echo " Open Source Audit — $STUDENT_NAME"
echo "================================"
echo "Software Choice : $SOFTWARE_CHOICE"
echo "Distribution    : $DISTRO"
echo "Kernel          : $KERNEL"
echo "Current User    : $USER_NAME"
echo "Home Directory  : $HOME_DIR"
echo "Uptime          : $UPTIME"
echo "Date & Time     : $CURRENT_DATE"
echo "--------------------------------"
echo "License Message:"
echo "This Linux operating system is open-source and primarily distributed under the GPL (General Public License)."
echo "================================"

# Prevent the terminal window from closing immediately when run on Windows
echo ""
read -p "Press [Enter] to exit..."
