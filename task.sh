#!/bin/bash

# Define an array of messages
arr[0]="bot: 👋 Hello Github!"
arr[1]="bot: 🥳 Yeayyy!"
arr[2]="bot: 😬 Working from github."
arr[3]="bot: 👨‍💻 Work, work, work!"
arr[4]="bot: 😪 Hufft..."
arr[5]="bot: 😎 I'm working for my master!"
arr[6]="bot: 🙄 Running task, again."
arr[7]="bot: 👻 Thanks master."
arr[7]="bot: 🤔 Update?."

# Generate a random number to select a message from the array
rand=$(($RANDOM % ${#arr[@]}))

# Get the current date and time
d=$(date '+%Y-%m-%dT%H:%M:%SZ')

# Check if update.md exists, and create it if it doesn't
if [ ! -e "update.md" ]; then
    touch update.md
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
git commit -am "${arr[$rand]} (at ${d})"
