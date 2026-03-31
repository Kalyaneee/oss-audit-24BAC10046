#!/bin/bash
# Script 4: Log File Analyzer
# Author: Kalyanee | Roll No: 24BAC10046
# Course: Open Source Software
# Software Audited: Git
# Usage: ./script4_log_analyzer.sh /var/log/syslog error

# --- Accept command line arguments ---
LOGFILE=${1:-"/var/log/syslog"}   # Default log file
KEYWORD=${2:-"error"}              # Default keyword to search

COUNT=0

echo "=================================="
echo " Log File Analyzer"
echo " Student: Kalyanee | 24BAC10046"
echo "=================================="
echo "Log File : $LOGFILE"
echo "Keyword  : $KEYWORD"
echo "----------------------------------"

# --- Check if file exists, retry with fallback if not ---
if [ ! -f "$LOGFILE" ]; then
    echo "Warning: $LOGFILE not found. Trying /var/log/dmesg..."
    LOGFILE="/var/log/dmesg"
    # If fallback also doesn't exist, exit gracefully
    if [ ! -f "$LOGFILE" ]; then
        echo "Error: No suitable log file found. Exiting."
        exit 1
    fi
fi

# --- Check if file is empty ---
if [ ! -s "$LOGFILE" ]; then
    echo "Warning: Log file is empty. Nothing to analyze."
    exit 0
fi

# --- Read file line by line and count keyword matches ---
while IFS= read -r LINE; do
    if echo "$LINE" | grep -iq "$KEYWORD"; then
        COUNT=$((COUNT + 1))
    fi
done < "$LOGFILE"

echo "Keyword '$KEYWORD' found $COUNT time(s) in $LOGFILE"
echo "----------------------------------"

# --- Print last 5 matching lines ---
echo "Last 5 matching lines:"
grep -i "$KEYWORD" "$LOGFILE" | tail -5

echo "=================================="
