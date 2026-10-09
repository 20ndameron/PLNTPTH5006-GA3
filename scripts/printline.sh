#!/bin/bash
set -euo pipefail

# Set input directry argument (i.e. which file to use)
indir="$1"

# Set line number argument (i.e. which line number to print)
line="$2"

# Script

echo "Starting script printline.sh"
echo
echo "File path:"
echo "$indir"
echo 
echo "Contents of line $line:"
tail -n +$line $indir | head -n +1
echo
echo "Finished"

