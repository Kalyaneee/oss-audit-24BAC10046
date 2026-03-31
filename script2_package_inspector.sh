#!/bin/bash
# Script 2: FOSS Package Inspector
# Author: Kalyanee | Roll No: 24BAC10046
# Course: Open Source Software
# Software Audited: Git

# --- Define the package to inspect ---
PACKAGE="git"

# --- Check if the package is installed ---
if command -v $PACKAGE &>/dev/null; then
    echo "=================================="
    echo " Package Inspector: $PACKAGE"
    echo "=================================="
    echo "Status  : INSTALLED"

    # Get version info
    VERSION=$($PACKAGE --version)
    echo "Version : $VERSION"

    # Try to get license/summary info depending on distro
    if command -v dpkg &>/dev/null; then
        dpkg -l $PACKAGE 2>/dev/null | grep -E "^ii" | awk '{print "Details :", $4, $5, $6, $7, $8}'
    elif command -v rpm &>/dev/null; then
        rpm -qi $PACKAGE 2>/dev/null | grep -E 'Version|License|Summary'
    fi
else
    echo "$PACKAGE is NOT installed on this system."
fi

echo "----------------------------------"

# --- Case statement: philosophy note per package ---
case $PACKAGE in
    git)
        echo "Git: born out of frustration with proprietary version control."
        echo "Linus Torvalds built it in 2005 when BitKeeper revoked free access."
        echo "Today it powers nearly all open-source collaboration on earth."
        ;;
    httpd|apache2)
        echo "Apache: the web server that built the open internet."
        ;;
    mysql)
        echo "MySQL: open source at the heart of millions of apps."
        ;;
    vlc)
        echo "VLC: built by students who just wanted to stream video freely."
        ;;
    *)
        echo "$PACKAGE: an open-source tool contributing to a freer world."
        ;;
esac

echo "=================================="
