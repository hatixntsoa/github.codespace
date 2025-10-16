#!/usr/bin/env bash
set -e

SETUP_BASE_URL="codespace.hatixntsoa.site/setup"
UTILS_BASE_URL="codespace.hatixntsoa.site/utils"

# Importing the input function
source <(curl -sSL "https://$UTILS_BASE_URL/input.sh")

echo "🚀 Running Codespace startup setup..."
echo

# Function to prompt for inputs and confirmation
collect_inputs() {
  input "Enter your timezone offset (e.g., 3 for GMT+3): " TZ_OFFSET
  input "Enter your Git user.name: " GIT_NAME
  input "Enter your Git user.email: " GIT_EMAIL

  echo
  echo "You entered:"
  echo "  🕒 Timezone Offset : GMT+$TZ_OFFSET"
  echo "  👤 Git Username    : $GIT_NAME"
  echo "  📧 Git Email       : $GIT_EMAIL"
  echo

  input "Are these correct? Please confirm (y/n): " CONFIRM

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
curl -sL "$SETUP_BASE_URL/setup.timezone.sh" | bash -s -- "$TZ_OFFSET"

# Run git credentials setup
curl -sL "$SETUP_BASE_URL/setup.git.creds.sh" | bash -s -- "$GIT_NAME" "$GIT_EMAIL"

echo
echo "🎉 Codespace environment initialized successfully!"
