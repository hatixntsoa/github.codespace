#!/usr/bin/env bash
set -e

GIT_NAME=$1
GIT_EMAIL=$2

if [[ -z "$GIT_NAME" || -z "$GIT_EMAIL" ]]; then
  echo "❌ Error: Git name and email must be provided."
  exit 1
fi

echo "⚙️ Setting Git config..."
git config --global user.name "$GIT_NAME"
git config --global user.email "$GIT_EMAIL"

echo "✅ Git identity set to:"
git config --global --list | grep 'user\.'

