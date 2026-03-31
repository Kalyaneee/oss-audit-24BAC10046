#!/bin/bash
# Script 5: Open Source Manifesto Generator
# Author: Kalyanee | Roll No: 24BAC10046
# Course: Open Source Software
# Software Audited: Git

echo "=================================="
echo " Open Source Manifesto Generator"
echo " Student: Kalyanee | 24BAC10046"
echo "=================================="
echo ""
echo "Answer three questions to generate your personal manifesto."
echo ""

# --- Read user input interactively ---
read -p "1. Name one open-source tool you use every day: " TOOL
read -p "2. In one word, what does 'freedom' mean to you? " FREEDOM
read -p "3. Name one thing you would build and share freely: " BUILD

# --- Get current date and username ---
DATE=$(date '+%d %B %Y')
AUTHOR=$(whoami)

# --- Define output filename ---
OUTPUT="manifesto_${AUTHOR}.txt"

# --- Compose and write the manifesto to file ---
echo "" > "$OUTPUT"
echo "======================================" >> "$OUTPUT"
echo "   MY OPEN SOURCE MANIFESTO" >> "$OUTPUT"
echo "   By: Kalyanee | 24BAC10046" >> "$OUTPUT"
echo "   Date: $DATE" >> "$OUTPUT"
echo "======================================" >> "$OUTPUT"
echo "" >> "$OUTPUT"
echo "Every day, I rely on $TOOL — a tool built not for profit," >> "$OUTPUT"
echo "but for people. It was created openly, shared freely, and" >> "$OUTPUT"
echo "improved by strangers who believed that $FREEDOM matters more" >> "$OUTPUT"
echo "than ownership. That belief shapes how I think about software." >> "$OUTPUT"
echo "" >> "$OUTPUT"
echo "If I could build anything and give it away, I would build $BUILD." >> "$OUTPUT"
echo "Not because I have to, but because open source taught me that" >> "$OUTPUT"
echo "the most powerful thing a developer can do is lower the barrier" >> "$OUTPUT"
echo "for the next person. Standing on the shoulders of giants means" >> "$OUTPUT"
echo "becoming a shoulder for someone else." >> "$OUTPUT"
echo "" >> "$OUTPUT"
echo "This is my commitment to the open source way." >> "$OUTPUT"
echo "======================================" >> "$OUTPUT"

# --- Note: aliases can simplify running this script ---
# alias manifesto='bash ~/script5_manifesto_generator.sh'

echo ""
echo "Manifesto saved to: $OUTPUT"
echo "----------------------------------"
cat "$OUTPUT"
echo "=================================="
