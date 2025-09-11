# GitHub Codespaces Setup

This repository provides a **quick startup script** for configuring your GitHub Codespaces environment.  
It is designed to make setting your **timezone** and **Git credentials** fast and easy every time you start a new Codespace.


## 🚀 What’s Inside
- **`startup.sh`** – a self-contained, interactive script that:  
  1. Installs timezone data and sets your Codespace timezone.  
  2. Configures your Git identity (`user.name` and `user.email`) interactively.  


## ⚡ Usage

To set up your Codespace environment, run the following command in a fresh terminal:

```bash
curl -sL https://raw.githubusercontent.com/hatixntsoa/github.codespaces/master/startup.sh | bash

