#!/bin/bash
set -e

# Omarchy theme
omarchy-theme Ristretto

# CLI tools (not included in base omarchy)
yay -S --needed \
  aws-cli-v2 \
  btop \
  dbeaver \
  docker \
  docker-buildx \
  docker-compose \
  github-cli \
  lazydocker \
  lazygit

# Config files
mkdir -p ~/.config/opencode/command
mkdir -p ~/.config/ghostty
mkdir -p ~/.config/hypr

cp opencode/command/*.md ~/.config/opencode/command/
cp ghostty/config ~/.config/ghostty/config
cp hypr/input.conf ~/.config/hypr/input.conf
cp hypr/bindings.conf ~/.config/hypr/bindings.conf

echo "Done!"
