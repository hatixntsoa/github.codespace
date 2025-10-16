# GitHub Codespace 🚀

<p align="center">
 <img height="230" src="https://codespace.hatixntsoa.site/images/codespace.png" alt="GitHub Codespace Setup Logo"/>
</p>

<div align="center">

<p>

`github.codespace` is a project aiming to automate startup script that instantly configures your **GitHub Codespace environment** — no manual setup required.
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

[Quick Start](#quick-start-%E2%9A%A1) |
[Screenshot](#screenshot-%F0%9F%93%B8) |
[Project Structure](#project-structure-%F0%9F%93%A6) |
[How It Works](#how-it-works-%F0%9F%94%A7) |
[Deployment](#deployment-%F0%9F%8C%90) |
[License](#license-%F0%9F%9B%A1)

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

## Screenshot 📸

<p align="center">
 <img src="https://codespace.hatixntsoa.site/images/screenshot.png" width="100%" alt="Gemini Chat TUI running in terminal"/>
</p>

<p align="center">
 <em>Example: Script Execution inside a GitHub Codespace Terminal session.</em>
</p>

<br>

## Project Structure 📦

```
.
├── setup/
│   ├── git.creds.sh       # Sets up Git username and email
│   ├── timezone.sh        # Configures system timezone
│   └── startup.sh               # Main startup script (alias: index.html)
├── CNAME                        # Custom domain for GitHub Pages
├── index.html                   # Serves bash or web content depending on context
├── LICENSE.md
└── README.md
```

<br>

## How It Works 🔧

The startup script (`index.html`) performs the following actions:

1. **Fetches and runs `timezone.sh`**

   * Applies your timezone based on offset input (e.g., `Etc/GMT-3`).
2. **Fetches and runs `git.creds.sh`**

   * Configures `user.name` and `user.email` for Git locally in the Codespace.

You can view the raw script here:
👉 [https://codespace.hatixntsoa.site](https://codespace.hatixntsoa.site)

<br>

## Deployment 🌐

This project is hosted via **GitHub Pages** with a [custom domain](https://codespace.hatixntsoa.site).

All scripts inside the `setup/` directory are public and accessible at:

```
https://codespace.hatixntsoa.site/setup/<script-name>
```

**Examples:**

* [git.creds.sh](https://codespace.hatixntsoa.site/setup/git.creds.sh)
* [timezone.sh](https://codespace.hatixntsoa.site/setup/timezone.sh)

<br>

## License 🛡

This project is licensed under the **MIT License**.
See the [LICENSE.md](LICENSE.md) file for details.
