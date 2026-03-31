#!/bin/bash
# Script 3: Disk and Permission Auditor
# Author: Kalyanee | Roll No: 24BAC10046
# Course: Open Source Software
# Software Audited: Git

# --- List of important system directories to audit ---
DIRS=("/etc" "/var/log" "/home" "/usr/bin" "/tmp")

echo "=================================="
echo " Disk and Permission Auditor"
echo " Student: Kalyanee | 24BAC10046"
echo "=================================="
echo ""

# --- Loop through each directory ---
for DIR in "${DIRS[@]}"; do
    if [ -d "$DIR" ]; then
        # Extract permissions, owner, group
        PERMS=$(ls -ld "$DIR" | awk '{print $1, $3, $4}')
        # Get directory size (suppress permission errors)
        SIZE=$(du -sh "$DIR" 2>/dev/null | cut -f1)
        echo "Directory : $DIR"
        echo "Permissions (type/owner/group): $PERMS"
        echo "Size      : $SIZE"
        echo "----------------------------------"
    else
        echo "$DIR does not exist on this system."
        echo "----------------------------------"
    fi
done

# --- Check Git's config directory specifically ---
echo ""
echo "== Git Config Directory Check =="
GIT_CONFIG_DIR="/etc/gitconfig"

if [ -f "$GIT_CONFIG_DIR" ]; then
    # Show permissions of git's global config file
    PERMS=$(ls -l "$GIT_CONFIG_DIR" | awk '{print $1, $3, $4}')
    echo "Git global config found at: $GIT_CONFIG_DIR"
    echo "Permissions: $PERMS"
else
    echo "No system-wide git config found at /etc/gitconfig"
    echo "Git may use per-user config at ~/.gitconfig instead"
fi

echo "=================================="
