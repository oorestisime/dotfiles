# Dotfiles

My personal config files for [Omarchy](https://omarchy.com) Linux.

## Install

### OpenCode Commands

Daily notes workflow for Obsidian with Linear/GitHub integration.

```bash
cp opencode/command/*.md ~/.config/opencode/command/
```

| Command | Description |
|---------|-------------|
| `/day` | Creates today's daily note with Linear tasks, GitHub PRs, and carried over todos |
| `/todos` | Shows today's todos grouped by status with counts |
| `/markdone <text>` | Marks a todo as done by fuzzy text match |
| `/decision <text>` | Logs a decision with context/rationale. Tagged #decision |
| `/idea <text>` | Logs an idea. Tagged #idea |

### Ghostty

Terminal config with JetBrains Mono, transparency, and custom keybinds.

```bash
cp ghostty/config ~/.config/ghostty/config
```

### Hyprland

Input and keybinding customizations.

```bash
cp hypr/input.conf ~/.config/hypr/input.conf
cp hypr/bindings.conf ~/.config/hypr/bindings.conf
```

**input.conf:**
- Dual keyboard layout: US + Greek
- Layout switch: Shift+Caps
- Faster key repeat (40 rate, 600ms delay)
- Numlock on by default
- Touchpad scroll speed: 0.4

**bindings.conf:**
- App launchers (terminal, browser, obsidian, signal, etc.)
- Web app shortcuts (ChatGPT, calendar, email, YouTube, etc.)

### Bash

Real-time history sharing across terminals.

```bash
mkdir -p ~/.config/bash
cp bash/history.sh ~/.config/bash/history.sh
```

Add to end of `~/.bashrc`:
```bash
. ~/.config/bash/history.sh
```

### Ghostty

Terminal config with copy-on-select and clipboard integration.

```bash
cp ghostty/config ~/.config/ghostty/config
```
