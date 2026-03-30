#!/bin/bash
# Script 4: Log File Analyzer
# Usage: ./log_analyzer.sh /var/log/messages

LOGFILE=$1
KEYWORD=${2:-"error"} # Default keyword is 'error'
COUNT=0

if [ ! -f "$LOGFILE" ]; then
 echo "Error: File $LOGFILE not found."
 read -p "Press [Enter] to exit..."
 exit 1
fi

# Do-while style retry if the file is empty
# We try up to 3 times before giving up
RETRY=0
while true; do
  if [ -s "$LOGFILE" ]; then
    break # File is no longer empty, so we break out of the loop
  fi
  
  echo "Warning: File is currently empty. Retrying in 2 seconds..."
  sleep 2
  RETRY=$((RETRY + 1))
  
  if [ $RETRY -ge 3 ]; then
    echo "Error: File is still empty. Exiting."
    read -p "Press [Enter] to exit..."
    exit 1
  fi
done

# Read through the file line by line
while IFS= read -r LINE; do
 if echo "$LINE" | grep -iq "$KEYWORD"; then
  COUNT=$((COUNT + 1))
 fi
done < "$LOGFILE"

echo "Keyword '$KEYWORD' found $COUNT times in $LOGFILE"

# Print the last 5 matching lines using tail + grep
if [ $COUNT -gt 0 ]; then
  echo ""
  echo "--- Last 5 Matching Lines ---"
  grep -i "$KEYWORD" "$LOGFILE" | tail -n 5
fi

# Prevent the terminal window from closing immediately when run on Windows
echo ""
read -p "Press [Enter] to exit..."
