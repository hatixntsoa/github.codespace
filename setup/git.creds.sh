#!/usr/bin/env bash
set -e

UTILS_BASE_URL="codespace.hatixntsoa.site/utils"

# Importing the input function
source <(curl -sSL "https://$UTILS_BASE_URL/input.sh")

GIT_NAME=$1
GIT_EMAIL=$2

# If no args, ask interactively
if [[ -z "$GIT_NAME" || -z "$GIT_EMAIL" ]]; then
  input "Enter Git name: " GIT_NAME
  input "Enter Git email: " GIT_EMAIL
fi

echo -n "⚙️ Setting Git config... "
git config --global user.name "$GIT_NAME"
git config --global user.email "$GIT_EMAIL"
echo "✔ Done"

# Show summary inline
USER_NAME=$(git config --global user.name)
USER_EMAIL=$(git config --global user.email)
echo "✅ Git identity set to: $USER_NAME <$USER_EMAIL>"
echo
