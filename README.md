# Custom configs for Windows Sandbox

---

## Prerequisites

- The [Windows Sandbox](https://learn.microsoft.com/en-us/windows/security/application-security/application-isolation/windows-sandbox/windows-sandbox-overview) feature needs to be enabled in `Turn Windows features on or off`.
- PowerShell must be installed.

## Filesystem structure

Create the following file structure:

```
C:\
└── SandboxConfig\
    ├── sandbox-tor.wsb
    └── install\
        ├── InSandboxInstalls.ps1
        └── InSandboxLauncher.cmd
```

### Explanation:

- `C:\SandboxConfig\sandbox-tor.wsb` is the configuration file for Windows Sandbox. Run this to start your custom Windows Sandbox.
- `C:\SandboxConfig\install\InSandboxLauncher.cmd` is a simple script that opens a PowerShell window in the running Windows Sandbox and waits for commands. This script is useful to get visual confirmation of what the Sandbox is installing.
- `C:\SandboxConfig\install\InSandboxInstalls.ps1` is the PowerShell script that will execute installation commands, such as installing Chocolatey (a Windows package manager) and then installing some packages from it.

## Usage

> 🚀 Navigate to Windows Explorer and run `C:\SandboxConfig\sandbox-tor.wsb`.

## Glitches

- When creating your own `.wsb` scripts, avoid using comments, as they will make the script invalid.
- When creating your own `.wsb` scripts, you cannot use environment variables; all paths must be hardcoded.

## Tested

- Tested in Windows 10 Pro (19045 / 4780) only

---
