#!/bin/bash

# Navigate to your repository
C:\Users\gk896\OneDrive\Desktop\dailyyy\daily-update\daily_update.bat || exit

# Check for changes
if [ -n "$(git status --porcelain)" ]; then
  # Add changes to git
  git add .

  # Commit changes
  git commit -m "Daily update: $(date +'%Y-%m-%d %H:%M:%S')"

  # Push changes to GitHub
  git push origin main  # Change 'main' to your branch name if different
else
  echo "No changes to commit."
fi