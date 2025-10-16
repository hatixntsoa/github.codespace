# 🚀 GitHub Codespace Environment Setup

<p align="center">
 <img height="230" src="https://codespace.hatixntsoa.site/images/codespace.png" alt="GitHub Codespace Setup Logo"/>
</p>

<div align="center">

<p>

`codespace.setup` is an automated startup script that instantly configures your **GitHub Codespace environment** — no manual setup required.  
It helps you quickly set your **timezone** and **Git credentials** on every new session in just one command.

</p>

<p>
  <a href="https://github.com/hatixntsoa/codespace.setup/blob/main/LICENSE.md">
    <img src="https://img.shields.io/badge/license-MIT-green.svg" alt="License: MIT">
  </a>
  <a href="https://codespace.hatixntsoa.site">
    <img src="https://img.shields.io/badge/status-active-brightgreen" alt="Project Status">
  </a>
  <a href="https://github.com/hatixntsoa">
    <img src="https://img.shields.io/badge/hosted%20on-GitHub%20Pages-black?logo=github" alt="Hosted on GitHub Pages">
  </a>
</p>

### Contents

[Quick Start](#quick-start) |
[Project Structure](#project-structure) |
[How It Works](#how-it-works) |
[Deployment](#deployment) |
[License](#license)

</div>

<br>

## Quick Start ⚡

To configure your Codespace environment instantly, run this single command in your terminal:

```bash
curl -sL codespace.hatixntsoa.site | bash
````

You’ll be prompted to enter:

* Your **timezone offset** (e.g., `3` for GMT+3)
* Your **Git username**
* Your **Git email**

Once complete, the script will:

* Set your system’s timezone accordingly
* Configure your Git credentials locally within the Codespace

<br>

## Project Structure 📦

```
.
├── setup.scripts/
│   ├── setup.git.creds.sh       # Sets up Git username and email
│   ├── setup.timezone.sh        # Configures system timezone
│   └── startup.sh               # Main startup script (alias: index.html)
├── CNAME                        # Custom domain for GitHub Pages
├── index.html                   # Serves bash or web content depending on context
├── LICENSE.md
└── README.md
```

<br>

## How It Works 🔧

The main entry point (`index.html`) behaves intelligently based on how it’s accessed:

| Access Method       | Behavior                                                    |
| ------------------- | ----------------------------------------------------------- |
| **Browser**         | Displays a clean info page explaining how to use the script |
| **Terminal (curl)** | Executes startup scripts automatically                      |

It runs two core setup scripts:

1. **`setup.timezone.sh`** – Configures the system timezone from user input
2. **`setup.git.creds.sh`** – Applies `git config` for username and email

You can view or test the raw served version here:
👉 [https://codespace.hatixntsoa.site](https://codespace.hatixntsoa.site)

<br>

## Deployment 🌐

This project is hosted via **GitHub Pages** with a [custom domain](https://codespace.hatixntsoa.site).

All scripts inside the `setup.scripts/` directory are public and accessible at:

```
https://codespace.hatixntsoa.site/setup.scripts/<script-name>
```

**Examples:**

* [setup.git.creds.sh](https://codespace.hatixntsoa.site/setup.scripts/setup.git.creds.sh)
* [setup.timezone.sh](https://codespace.hatixntsoa.site/setup.scripts/setup.timezone.sh)

<br>

## License 🛡

This project is licensed under the **MIT License**.
See the [LICENSE.md](LICENSE.md) file for details.
