# random-q3-demon-names

> Randomly generate a demon-themed Quake III player name with colorful flair — available in both **Bash** and **PowerShell** flavors.

---

## Overview

**random-q3-demon-names** is a lightweight script that generates a random “demon name” from a curated list of infernal titles and applies Quake III Arena color codes to make your in-game name stand out.
Each execution randomly selects:

* A **demon name** (e.g., `azazel`, `lucifer`, `belial`)
* A **color** (excluding white `^7`) for the first character

Then formats it so the first letter is colored, and the rest of the name remains white.

Example generated name:

```
^3L^7ucifer
```

---

## Scripts

### Bash Version — `q3-random-demon-names.sh`

A portable shell script for Linux/macOS environments.

**Usage:**

```bash
chmod +x q3-random-demon-names.sh
./q3-random-demon-names.sh
```

**Output Example:**

```
/games/quake3e/quake3e.x64 +set cl_renderer vulkan +exec load-config-files.cfg +connect ffa.q3a51.com +seta "name ^2M^7ammon"
```

**Behavior:**

* Selects a random demon name.
* Picks a random color code for the first letter.
* Prints the full Quake III launch command with your styled name.

---

### PowerShell Version — `q3-random-demon-names.ps1`

A cross-platform PowerShell equivalent, tested on Windows and Linux (PowerShell 7+).

**Usage (Windows):**

```powershell
PS C:\> .\q3-random-demon-names.ps1
```

**Usage (Linux/macOS):**

```bash
pwsh ./q3-random-demon-names.ps1
```

**Example Output:**

```
C:\Games\Quake3\quake3e-vulkan.x64.exe +connect ffa.q3a51.com +seta "name ^5B^7aphomet"
```

**Configuration Variables:**

| Variable             | Description                                  | Default                  |
| -------------------- | -------------------------------------------- | ------------------------ |
| `$quake3_dir`        | Path to your Quake 3 installation directory  | `C:\Games\Quake3`        |
| `$quake3_executable` | Executable file name for your Quake 3 client | `quake3e-vulkan.x64.exe` |

Modify these values inside the script as needed.

---

## Color Codes Reference

| Code | Color      | Notes                                 |
| ---- | ---------- | ------------------------------------- |
| ^0   | Black      |                                       |
| ^1   | Red        |                                       |
| ^2   | Green      |                                       |
| ^3   | Yellow     |                                       |
| ^4   | Blue       |                                       |
| ^5   | Cyan       |                                       |
| ^6   | Pink       |                                       |
| ^8   | Gray       |                                       |
| ^9   | Light Blue |                                       |
| ^7   | White      | *(Reserved for the rest of the name)* |

---

## Example Workflow

1. Run the script:

   ```bash
   ./q3-random-demon-names.sh
   ```

   or

   ```powershell
   .\q3-random-demon-names.ps1
   ```

2. Copy the generated command.

3. Paste and execute it in your terminal to launch Quake III Arena with your new infernal identity.

---

## Credits

* **Author:** Trismegist0s
* **Date:** 11/10/2025
* **Concept:** Demon name randomizer for Quake III
* **Languages:** Bash, PowerShell

---

## License

This project is released under the **MIT License**.
Feel free to fork, modify, and contribute your own chaos.

---

> *“When you connect to the arena, let them know who summoned you.”*

---
