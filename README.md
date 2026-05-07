# Notify Me

A simple script to send notifications via Telegram bot after a process is done.

## Features

- Send messages to Telegram
- Configurable bot token and chat ID

## Prerequisites

- `curl` command-line tool
- Telegram account with a bot

## Getting Started

### Creating a Telegram Bot

1. Open Telegram and search for `@BotFather`
2. Start a conversation with BotFather
3. Type `/newbot` and follow the instructions
4. Give your bot a name and username
5. BotFather will provide you with a **bot token**
6. Type `/start` to start the bot

### Finding Your Chat ID

1. Open [https://api.telegram.org/bot<YOUR_BOT_TOKEN>/getUpdates](https://api.telegram.org/bot<YOUR_BOT_TOKEN>/getUpdates) replace `<YOUR_BOT_TOKEN>` with your actual bot token
2. Send a message to your bot
3. Look for the `"chat":{"id":<YOUR_CHAT_ID>, ...}` in the response
4. Note down your `<YOUR_CHAT_ID>`

### Setup

1. Clone this repository
2. Make the script executable:

`chmod +x notify-me.sh`

### Configuration

1. Edit the `notify-me.sh` file
2. Set the `BOT_TOKEN` variable to your bot's token
3. Set the `CHAT_ID` variable to your chat ID

### Installation

To install the script system-wide:

`sudo cp notify-me.sh /usr/local/bin/notify-me`

## Usage

`notify-me <your-command>`