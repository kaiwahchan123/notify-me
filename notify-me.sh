#!/usr/bin/env bash
set -euo pipefail

if [ $# -lt 1 ]; then
    echo "Usage: $0 <command> [args...]"
    exit 1
fi
token="your_token"
chat_id="your_chat_id"
tg_url="https://api.telegram.org/bot$token/sendMessage"

success_text="SUCCESS! I finished command "
failure_text="Failure! I messed up command "


cmd="$1"        # the command name
shift           # remove the command name from the argument list

echo "Running command: $cmd"

if "$cmd" "$@"; then
    curl -X POST ${tg_url} -d chat_id=$chat_id -d text="$success_text$cmd" -s >/dev/null
else
    curl -X POST ${tg_url} -d chat_id=$chat_id -d text="$failure_text$cmd" -s >/dev/null 
fi

