# green-commit

The `task.sh` script generates random commit messages and updates an `update.md` file in your repository with the last update timestamp. It's a fun way to automate your daily commits while keeping your GitHub contribution graph green.

## How it works

1. The script defines an array of commit messages, each with an emoji and a short description.

2. It generates a random number to select a message from the array.

3. It gets the current date and time in the 'Asia/Kuala_Lumpur' timezone (you can change this timezone to your preference).

4. If the `update.md` file doesn't exist, it creates it and stages it for commit.

5. It appends the last update timestamp to the `update.md` file.

6. It configures local Git user information (you can replace the email and username with your own).

7. Finally, it commits the changes to the repository with a random commit message and the current timestamp.

## Customize

- Change the [cron schedule](https://github.com/zhafranzainal/green-commit/blob/main/.github/workflows/bot.yml#L13) for the automation of daily commits. (Refer: [https://crontab.guru/](https://crontab.guru/))
- Modify the [messages array](https://github.com/zhafranzainal/green-commit/blob/main/task.sh#L3) to include your own commit messages.
- Replace the [Git user information](https://github.com/zhafranzainal/green-commit/blob/main/task.sh#L29) with your own.
- Change the [timezone](https://github.com/zhafranzainal/green-commit/blob/main/task.sh#L18).