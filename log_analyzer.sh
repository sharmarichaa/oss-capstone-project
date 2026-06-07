#!/bin/bash
# Script 4: Log File Analyzer

# --- SETUP ---
# Define the log file to analyze
LOGFILE="/var/log/syslog"

# Ask user for keyword to search
echo "=========================================="
echo "    LOG FILE ANALYZER"
echo "=========================================="
read -p "Enter keyword to search for: " KEYWORD

# Check if log file exists
if [ ! -f "$LOGFILE" ]; then
    echo "ERROR: Log file $LOGFILE does not exist!"
    exit 1
fi

echo ""
echo "Searching for '$KEYWORD' in $LOGFILE..."
echo ""

# --- VARIABLE INITIALIZATION ---
COUNT=0

# --- WHILE-READ LOOP ---
# Reads the file line by line
while IFS= read -r LINE; do
    # -i makes it case-insensitive, -q makes it quiet
    if echo "$LINE" | grep -iq "$KEYWORD"; then
        COUNT=$((COUNT + 1))
    fi
done < "$LOGFILE"

# --- SUMMARY & TAIL ---
echo "=========================================="
echo "Scan Complete."
echo "Keyword '$KEYWORD' found $COUNT times."
echo ""
echo "Last 5 matching entries:"
grep -i "$KEYWORD" "$LOGFILE" | tail -n 5
echo "=========================================="