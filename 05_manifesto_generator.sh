#!/bin/bash
# Script 5: Open Source Manifesto Generator

echo "Answer three questions to generate your manifesto."
echo ""
read -p "1. Name one open-source tool you use every day: " TOOL
read -p "2. In one word, what does 'freedom' mean to you? " FREEDOM
read -p "3. Name one thing you would build and share freely: " BUILD

DATE=$(date '+%d %B %Y')
OUTPUT="manifesto_$(whoami).txt"

# Compose a paragraph using $TOOL, $FREEDOM, $BUILD and write it to $OUTPUT using echo and >>
echo "### My Open Source Manifesto ###" > "$OUTPUT"
echo "Date: $DATE" >> "$OUTPUT"
echo "" >> "$OUTPUT"
echo "I believe in open source because tools like $TOOL make my daily life easier." >> "$OUTPUT"
echo "To me, true freedom means $FREEDOM, which is exactly the core philosophy of open source." >> "$OUTPUT"
echo "If I had the chance to contribute, I would build $BUILD and share it freely with the world!" >> "$OUTPUT"

# ALIAS CONCEPT DEMONSTRATION:
# You can easily run this script by adding the following alias to your ~/.bashrc file:
# alias manifesto='bash ~/path/to/manifesto_generator.sh'
# After sourcing that file, you only need to type 'manifesto' to run the script!

echo ""
echo "Manifesto saved to $OUTPUT"
echo "--------------------------------"
cat "$OUTPUT"

# Prevent the terminal window from closing immediately when run on Windows
echo ""
read -p "Press [Enter] to exit..."
