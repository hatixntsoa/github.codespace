# 🚀 GitHub Codespace Environment Setup

This repository provides an automated **startup script** to configure your GitHub Codespace environment in seconds.

It helps you quickly set your **timezone** and **Git credentials** on every new Codespace session—no manual steps required.

<br>

## 📦 Project Structure

```
.
├── setup.scripts/
│   ├── setup.git.creds.sh       # Sets up Git username and email
│   ├── setup.timezone.sh        # Configures system timezone
│   └── startup.sh               # Main startup script (alias: index.html)
├── CNAME                        # Custom domain for GitHub Pages
├── index.html                   # Served script: identical to startup.sh
├── LICENSE.md
└── README.md
```

<br>

## ⚡ Quick Start

To configure your Codespace environment, simply run the following command in your terminal:

```bash
curl -sL codespace.hatixntsoa.site | bash
```

You’ll be prompted to input:

* Your **timezone offset** (e.g., `3` for GMT+3)
* Your **Git user name**
* Your **Git email**

The script will then:

* Automatically configure your system's timezone
* Set up your Git identity using `git config`

<br>

## 🔧 What It Does

The startup script (`index.html`) performs the following actions:

1. **Fetches and runs `setup.timezone.sh`**

   * Applies your timezone based on offset input (e.g., `Etc/GMT-3`).
2. **Fetches and runs `setup.git.creds.sh`**

   * Configures `user.name` and `user.email` for Git locally in the Codespace.

You can view the raw script here:
[https://codespace.hatixntsoa.site](https://codespace.hatixntsoa.site)

<br>

## 🌐 Deployment Details

This project is deployed via **GitHub Pages** using a [custom domain](https://codespace.hatixntsoa.site).
All scripts in the `setup.scripts/` folder are publicly accessible under:

```
https://codespace.hatixntsoa.site/setup.scripts/<script-name>
```

Example:

* [setup.git.creds.sh](https://codespace.hatixntsoa.site/setup.scripts/setup.git.creds.sh)
* [setup.timezone.sh](https://codespace.hatixntsoa.site/setup.scripts/setup.timezone.sh)

<br>

## 🛡 License

This project is licensed under the [MIT License](LICENSE.md).
