#!/bin/bash
# Script 3: Disk and Permission Auditor

# Use standard directories that exist natively on Git Bash and run fast
DIRS=("/etc" "/var/log" "/home" "/usr/bin" "/tmp")
echo "Directory Audit Report"
echo "----------------------"

for DIR in "${DIRS[@]}"; do
 if [ -d "$DIR" ]; then
  # Extract Permissions and Owner using ls -ld and awk
  PERMS=$(ls -ld "$DIR" | awk '{print $1, $3, $4}')
  
  # Check directory size using du and cut
  SIZE=$(du -sh "$DIR" 2>/dev/null | cut -f1)
  
  # Check filesystem storage usage using df and awk
  FS_USAGE=$(df -h "$DIR" 2>/dev/null | awk 'NR==2 {print $5}')
  
  echo "$DIR => Permissions: $PERMS | Size: $SIZE | Disk Used: $FS_USAGE"
 else
  echo "$DIR does not exist on this system"
 fi
done

# Check if Git's config file exists and print its permissions
echo "----------------------"
GIT_CONFIG="$HOME/.gitconfig"

if [ -f "$GIT_CONFIG" ]; then
  GIT_PERMS=$(ls -ld $GIT_CONFIG | awk '{print $1, $3, $4}')
  echo "Git config ($GIT_CONFIG) exists."
  echo "Permissions/Owner: $GIT_PERMS"
else
  echo "Git config ($GIT_CONFIG) does not exist."
fi

# Prevent the terminal window from closing immediately when run on Windows
echo ""
read -p "Press [Enter] to exit..."
