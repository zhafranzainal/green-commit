#!/bin/bash

# Define an array of messages
arr[0]="bot: 🐞 Fixed a bug that was so sneaky"
arr[1]="bot: 🥶 Implemented cool feature"
arr[2]="bot: 🧹 Cleaned up the codebase"
arr[3]="bot: 🧈 Merged code so smoothly, it's practically buttery"
arr[4]="bot: 🐆 Optimized performance to rival a cheetah"
arr[5]="bot: 🌱 Code so fresh, it's practically minty"
arr[6]="bot: 📄 Updated documentation because reading is fundamental"
arr[7]="bot: 🔧 Fixed the thing, again"
arr[8]="bot: ✨ Made it work, magically"

# Generate a random number to select a message from the array
rand=$(($RANDOM % ${#arr[@]}))

# Get the current date and time
d=$(date '+%Y-%m-%dT%H:%M:%SZ')

# Check if update.md exists, and create it if it doesn't
if [ ! -e "update.md" ]; then
    touch update.md
    git add update.md
fi

# Append text to update.md, indicating the last update time
echo "## 🤔 LAST UPDATED AT: ${d}" >update.md

# Configure local Git user information
git config --local user.email "zhafranzainal11@gmail.com"
git config --local user.name "Zhafran Zainal"

# Commit changes to the repository with a random message and the current timestamp
# git commit -am: commit all modified files and provide a commit message in a single command
# a (all): Automatically add all modified files in the working directory
# m (message): Specify the commit message that describes the purpose of the commit
git commit -am "${arr[$rand]} at ${d}"
