#!/bin/bash

# Define an array of messages
messages[0]="🐞 Fixed a sneaky bug"
messages[1]="🥶 Implemented cool feature"
messages[2]="🧹 Cleaned up codebase"
messages[3]="🧈 Merged code buttery smooth"
messages[4]="🐆 Performance optimized like cheetah"
messages[5]="🌱 Code's minty fresh"
messages[6]="📄 Updated docs as reading matters"
messages[7]="🔧 Fixed the thing, again"
messages[8]="✨ Made it work, magically"

# Generate a random number to select a message from the array
randomNum=$(($RANDOM % ${#messages[@]}))

# Get the current date and time
currentTimestamp=$(TZ='Asia/Kuala_Lumpur' date '+%B %d, %Y at %I:%M %p')

# Check if update.md exists, and create it if it doesn't
if [ ! -e "update.md" ]; then
    touch update.md
    git add update.md
fi

# Append text to update.md, indicating the last update time
echo "## 🤔 LAST UPDATED ON: ${currentTimestamp}" >update.md

# Configure local Git user information
git config --local user.email "zhafranzainal11@gmail.com"
git config --local user.name "Zhafran Zainal"

# Commit changes to the repository with a random message and the current timestamp
# git commit -am: commit all modified files and provide a commit message in a single command
# a (all): Automatically add all modified files in the working directory
# m (message): Specify the commit message that describes the purpose of the commit
git commit -am "${messages[$randomNum]} on ${currentTimestamp}"
