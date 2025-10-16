#!/usr/bin/env bash
set -e

UTILS_BASE_URL="codespace.hatixntsoa.site/utils"

# Importing the input function
source <(curl -sSL "https://$UTILS_BASE_URL/input.sh")

# Check if an argument is provided
TIMEZONE_OFFSET=$1

if [[ -z "$TIMEZONE_OFFSET" ]]; then
  input "Enter timezone offset (e.g. 3 for GMT-3): " TIMEZONE_OFFSET
fi

ZONE="Etc/GMT-$TIMEZONE_OFFSET"

echo -n "📦 Installing timezone data... "
sudo apt-get update -qq >/dev/null 2>&1
sudo DEBIAN_FRONTEND=noninteractive apt-get install -y -qq tzdata >/dev/null 2>&1
echo "✔ Done"

echo -n "🕒 Setting timezone to $ZONE... "
sudo ln -sf /usr/share/zoneinfo/$ZONE /etc/localtime
echo "$ZONE" | sudo tee /etc/timezone >/dev/null
echo "✔ Done"

# Print date inline
echo -n "✅ Current date/time:  "
date
echo
