#!/usr/bin/env bash
set -e

BASE_URL="codespace.hatixntsoa.site/setup.scripts"

echo "🚀 Running Codespace startup setup..."
echo

# Function to prompt for inputs and confirmation
collect_inputs() {
  read -p "Enter your timezone offset (e.g., 3 for GMT+3): " TZ_OFFSET
  read -p "Enter your Git user.name: " GIT_NAME
  read -p "Enter your Git user.email: " GIT_EMAIL

  echo
  echo "You entered:"
  echo "  🕒 Timezone Offset : GMT+$TZ_OFFSET"
  echo "  👤 Git Username    : $GIT_NAME"
  echo "  📧 Git Email       : $GIT_EMAIL"
  echo

  read -p "Are these correct? Please confirm (y/n): " CONFIRM
  echo
}

# Loop until user confirms
while true; do
  collect_inputs
  if [[ "$CONFIRM" =~ ^[Yy]$ ]]; then
    break
  else
    echo "Let's try again..."
    echo
  fi
done

# Run timezone setup
curl -sL "$BASE_URL/setup.timezone.sh" | bash -s -- "$TZ_OFFSET"

# Run git credentials setup
curl -sL "$BASE_URL/setup.git.creds.sh" | bash -s -- "$GIT_NAME" "$GIT_EMAIL"

echo
echo "🎉 Codespace environment initialized successfully!"
