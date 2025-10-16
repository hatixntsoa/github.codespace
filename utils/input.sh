#!/usr/bin/env bash
set -e

# Function to read input
# Usage: input "Display text" variable_name
function input {
  local prompt="$1"
  local var_name="$2"
  local input

  if [[ -t 0 ]]; then
    # stdin is a terminal
    read -p "$prompt" input
  else
    # stdin is a pipe → read from /dev/tty
    read -p "$prompt" input </dev/tty
  fi

  # Assign input to variable by name
  printf -v "$var_name" "%s" "$input"
}
