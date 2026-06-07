#!/bin/bash
# Script 3: Disk and Permission Auditor

# --- THE LIST (ARRAY) ---
DIRS=("/etc" "/var/log" "/home" "/usr/bin" "/tmp")

echo "=========================================="
echo "    DIRECTORY AUDIT REPORT"
echo "=========================================="
echo "DIRECTORY | PERMS/OWNER | SIZE"
echo "=========================================="

# --- THE FOR LOOP ---
# This loops through each path in the DIRS array
for DIR in "${DIRS[@]}"; do
    # Check if the directory actually exists
    if [ -d "$DIR" ]; then
    # Use ls -ld to get info, then AWK to extract:
    # $1 (Permissions), $3 (Owner), $4 (Group)
    PERMS=$(ls -ld "$DIR" | awk '{print $1 "(" $3 ":" $4 ")"}')
    
    # Use du (Disk Usage) -s (summary) -h (human readable)
    # 2>/dev/null hides 'permission denied' errors for certain subfolders
    SIZE=$(du -sh "$DIR" 2>/dev/null | cut -f1)

    # Output the result in a formatted line
    printf "%-16s | %-16s | %s\n" "$DIR" "$PERMS" "$SIZE"
    else
    echo "$DIR => Error: Directory not found."
    fi
done
echo "=========================================="