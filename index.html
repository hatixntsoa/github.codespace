#!/usr/bin/env bash
set -e

BASE_URL="codespace.hatixntsoa.site/setup.scripts"

echo "🚀 Running Codespace startup setup..."
echo

# Function to prompt for inputs and confirmation
collect_inputs() {
  if [[ -t 0 ]]; then
    # stdin is a terminal → normal read
    read -p "Enter your timezone offset (e.g., 3 for GMT+3): " TZ_OFFSET
    read -p "Enter your Git user.name: " GIT_NAME
    read -p "Enter your Git user.email: " GIT_EMAIL
  else
    # stdin is a pipe (e.g. curl | bash) → force read from /dev/tty
    read -p "Enter your timezone offset (e.g., 3 for GMT+3): " TZ_OFFSET </dev/tty
    read -p "Enter your Git user.name: " GIT_NAME </dev/tty
    read -p "Enter your Git user.email: " GIT_EMAIL </dev/tty
  fi

  echo
  echo "You entered:"
  echo "  🕒 Timezone Offset : GMT+$TZ_OFFSET"
  echo "  👤 Git Username    : $GIT_NAME"
  echo "  📧 Git Email       : $GIT_EMAIL"
  echo

  if [[ -t 0 ]]; then
    # stdin is a terminal → normal read
    read -p "Are these correct? Please confirm (y/n): " CONFIRM
  else
    # stdin is a pipe (e.g. curl | bash) → force read from /dev/tty
    read -p "Are these correct? Please confirm (y/n): " CONFIRM </dev/tty
  fi

  echo
}

# Loop until user confirms
while true; do
  collect_inputs
  if [[ "$CONFIRM" =~ ^[Yy]$ ]]; then
    break
  else
    echo "Try again..."
    echo
  fi
done

# Run timezone setup
curl -sL "$BASE_URL/setup.timezone.sh" | bash -s -- "$TZ_OFFSET"

# Run git credentials setup
curl -sL "$BASE_URL/setup.git.creds.sh" | bash -s -- "$GIT_NAME" "$GIT_EMAIL"

echo
echo "🎉 Codespace environment initialized successfully!"
