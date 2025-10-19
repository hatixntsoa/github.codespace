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

# Function to detect and install tzdata depending on the distribution
function install_tzdata {
  echo -n "📦 Installing timezone data... "

  if [ -f /etc/debian_version ]; then
    # Debian/Ubuntu
    sudo apt-get update -qq >/dev/null 2>&1
    sudo DEBIAN_FRONTEND=noninteractive apt-get install -y -qq tzdata >/dev/null 2>&1

  elif [ -f /etc/redhat-release ] || [ -f /etc/centos-release ]; then
    # RedHat/CentOS/Fedora
    if command -v dnf >/dev/null 2>&1; then
      sudo dnf install -y tzdata >/dev/null 2>&1
    else
      sudo yum install -y tzdata >/dev/null 2>&1
    fi

  elif [ -f /etc/arch-release ]; then
    # Arch Linux
    sudo pacman -Sy --noconfirm tzdata >/dev/null 2>&1

  elif [ -f /etc/SuSE-release ] || [ -f /etc/SUSE-brand ]; then
    # openSUSE / SLES
    sudo zypper --non-interactive install tzdata >/dev/null 2>&1

  else
    echo "✘ Unsupported Linux distribution"
    exit 1
  fi

  echo "✔ Done"
}

# Call the function install_tzdata
install_tzdata

echo -n "🕒 Setting timezone to $ZONE... "
sudo ln -sf /usr/share/zoneinfo/$ZONE /etc/localtime
echo "$ZONE" | sudo tee /etc/timezone >/dev/null
echo "✔ Done"

# Print date inline
echo -n "✅ Current date/time:  "
date
echo
