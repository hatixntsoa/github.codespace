#!/usr/bin/env bash
set -e

BASE_URL="codespace.hatixntsoa.site/setup.scripts"

echo "🚀 Running Codespace startup setup..."

# Accept arguments or ask interactively
TZ_OFFSET=${1:-""}
GIT_NAME=${2:-""}
GIT_EMAIL=${3:-""}

if [[ -z "$TZ_OFFSET" ]]; then
  read -p "Enter your timezone offset (e.g., 3 for GMT+3): " TZ_OFFSET
fi

if [[ -z "$GIT_NAME" ]]; then
  read -p "Enter your Git user.name: " GIT_NAME
fi

if [[ -z "$GIT_EMAIL" ]]; then
  read -p "Enter your Git user.email: " GIT_EMAIL
fi

# Run timezone setup
curl -sL "$BASE_URL/setup.timezone.sh" | bash -s -- "$TZ_OFFSET"

# Run git credentials setup
curl -sL "$BASE_URL/setup.git.creds.sh" | bash -s -- "$GIT_NAME" "$GIT_EMAIL"

echo "🎉 Codespace environment initialized successfully!"
