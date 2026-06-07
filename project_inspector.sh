#!/bin/bash
# Script 2: FOSS Package Inspector

# The software we are auditing
PACKAGE="git"

echo "Checking system for package: $PACKAGE..."

# --- IF-THEN-ELSE LOGIC ---
# dpkg -s checks the status. &>/dev/null hides the technical error message.
if dpkg -s $PACKAGE &>/dev/null; then
    echo "SUCCESS: $PACKAGE is installed."
    echo "---"
    # PIPE WITH GREP: We only want to see the Package name and Version
    dpkg -s $PACKAGE | grep -E 'Package:|Version:|Status:'
else
    echo "FAILURE: $PACKAGE is NOT found."
    echo "Install it using: sudo apt install $PACKAGE"
fi

echo "---"

# --- CASE STATEMENT ---
# This prints a specific philosophy note based on the package name
case $PACKAGE in
    git)
    echo "Philosophy: The distributed system that democratized code collaboration."
    ;;
    apache2)
    echo "Philosophy: The web server that built the open internet."
    ;;
    mysql-server)
    echo "Philosophy: Open source at the heart of millions of web applications."
    ;;
esac