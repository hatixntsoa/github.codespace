#!/usr/bin/env bash
set -e

GIT_NAME=$1
GIT_EMAIL=$2

# If no args, ask interactively
if [[ -z "$GIT_NAME" || -z "$GIT_EMAIL" ]]; then
  if [[ -t 0 ]]; then
    # stdin is a terminal → normal read
    read -p "Enter Git name: " GIT_NAME
    read -p "Enter Git email: " GIT_EMAIL
  else
    # stdin is a pipe (e.g. curl | bash) → force read from /dev/tty
    read -p "Enter Git name: " GIT_NAME < /dev/tty
    read -p "Enter Git email: " GIT_EMAIL < /dev/tty
  fi
fi

echo "⚙️ Setting Git config..."
git config --global user.name "$GIT_NAME"
git config --global user.email "$GIT_EMAIL"

echo "✅ Git identity set to:"
git config --global --list | grep 'user\.'
