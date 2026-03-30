#!/bin/bash
# Script 2: FOSS Package Inspector

PACKAGE="git" # Your chosen software

# Check if package is installed
# Using dpkg as it's the standard for Debian/Ubuntu systems
if dpkg -l "$PACKAGE" &>/dev/null || command -v "$PACKAGE" &>/dev/null; then
 echo "$PACKAGE is installed."
 # dpkg -s provides detailed info similar to rpm -qi
 if command -v dpkg &>/dev/null && dpkg -s "$PACKAGE" &>/dev/null; then
  dpkg -s "$PACKAGE" | grep -E '^Version|^Description' | head -n 2
 else
  # Fallback for environments without dpkg (like Git Bash on Windows)
  echo "Version: $($PACKAGE --version)"
 fi
else
 echo "$PACKAGE is NOT installed."
fi

# A case statement that prints a one-line philosophy note about the package based on its name
case $PACKAGE in
 httpd|apache2) 
   echo "Apache: the web server that built the open internet" 
   ;;
 mysql) 
   echo "MySQL: open source at the heart of millions of apps" 
   ;;
 git)
   echo "Git: the decentralized tool that enabled global code collaboration"
   ;;
 vlc)
   echo "VLC: the media player that proves open source can handle any format"
   ;;
 firefox)
   echo "Firefox: the browser fighting for a free, open, and private web"
   ;;
 *)
   echo "$PACKAGE: Another great tool in the open source ecosystem"
   ;;
esac

# Prevent the terminal window from closing immediately when run on Windows
echo ""
read -p "Press [Enter] to exit..."
