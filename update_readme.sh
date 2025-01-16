#!/bin/bash

# Example logic to calculate the streak
# This is just a placeholder example
calculate_streak() {
  echo 5
}

# Read the current README content
README_CONTENT=$(cat README.md)

# Calculate the streak
STREAK=$(calculate_streak)

# Replace the placeholder in the README file
NEW_CONTENT=$(echo "$README_CONTENT" | sed "s|<!-- STREAK-PLACEHOLDER -->|<p align=\"center\"><img src=\"https://github-readme-streak-stats.herokuapp.com/?user=rahul-mandal01&theme=dark&hide_border=true\" alt=\"GitHub Streak\" /></p>\n<p align=\"center\">Longest Streak: $STREAK days</p>|g")

# Write the updated content back to the README file
echo "$NEW_CONTENT" > README.md
