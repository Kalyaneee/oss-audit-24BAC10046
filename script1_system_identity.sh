#!/bin/bash
# Script 1: System Identity Report
# Author: Kalyanee | Roll No: 24BAC10046
# Course: Open Source Software
# Software Audited: Git

# --- Variables ---
STUDENT_NAME="Kalyanee"
ROLL_NO="24BAC10046"
SOFTWARE_CHOICE="Git"

# --- Gather system info ---
KERNEL=$(uname -r)
USER_NAME=$(whoami)
UPTIME=$(uptime -p)
DISTRO=$(cat /etc/os-release | grep PRETTY_NAME | cut -d= -f2 | tr -d '"')
CURRENT_DATE=$(date '+%d %B %Y, %H:%M:%S')
HOME_DIR=$HOME

# --- Display the report ---
echo "=================================="
echo "  Open Source Audit — $STUDENT_NAME"
echo "  Roll No: $ROLL_NO"
echo "=================================="
echo "Software Audited : $SOFTWARE_CHOICE"
echo "Kernel Version   : $KERNEL"
echo "Distribution     : $DISTRO"
echo "Logged-in User   : $USER_NAME"
echo "Home Directory   : $HOME_DIR"
echo "System Uptime    : $UPTIME"
echo "Date & Time      : $CURRENT_DATE"
echo "----------------------------------"
# Git is licensed under GPL v2
echo "License Note: Git is licensed under GNU GPL v2"
echo "  This means you are free to use, study, modify,"
echo "  and distribute it — as long as derivatives stay open."
echo "=================================="
