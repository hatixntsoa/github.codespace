#!/usr/bin/env bash
set -e

# Check if an argument is provided
TIMEZONE_OFFSET=$1

if [[ -z "$TIMEZONE_OFFSET" ]]; then
  if [[ -t 0 ]]; then
    # stdin is a terminal → direct execution
    read -p "Enter timezone offset (e.g. 3 for GMT-3): " TIMEZONE_OFFSET
  else
    # stdin is not a terminal (e.g. curl | bash) → use /dev/tty
    read -p "Enter timezone offset (e.g. 3 for GMT-3): " TIMEZONE_OFFSET < /dev/tty
  fi
fi

ZONE="Etc/GMT-$TIMEZONE_OFFSET"

echo "📦 Installing timezone data..."
sudo apt-get update -qq
sudo apt-get install -y tzdata

echo "🕒 Setting timezone to $ZONE..."
sudo ln -sf /usr/share/zoneinfo/$ZONE /etc/localtime
echo "$ZONE" | sudo tee /etc/timezone > /dev/null

echo "✅ Current date/time:"
date
