#!/usr/bin/env bash
set -e

TIMEZONE_OFFSET=$1

if [[ -z "$TIMEZONE_OFFSET" ]]; then
  echo "❌ Error: No timezone offset provided."
  exit 1
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

