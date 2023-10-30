#!/bin/bash

# Folder to watch for new Word files
WATCH_FOLDER="/Users/jainiljaha/Desktop/retype_doc"

# Folder where your Retype project is located
RETYPE_FOLDER="/Users/jainiljaha/Desktop/retype"

# Watch for changes
fswatch -o $WATCH_FOLDER | while read -r event
do
  # List all new or modified Word files in the watch folder
  NEW_FILES=$(find $WATCH_FOLDER -iname "*.docx" -type f)
  
  for NEW_FILE in $NEW_FILES; do
    # Convert Word to Markdown
    FILENAME=$(basename -- "$NEW_FILE")
    pandoc -s "$NEW_FILE" -t markdown -o "$RETYPE_FOLDER/${FILENAME%.docx}.md"
    
    # Add, commit, and push to GitHub
    cd $RETYPE_FOLDER
    git add .
    git commit -m "Automatically added $FILENAME"
    git push origin main
  done
done