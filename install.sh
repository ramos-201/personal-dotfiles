#!/bin/bash

# apt

# ──────────────────────────────────────────
# System Update & Package Installation
# ──────────────────────────────────────────

# Request password
sudo -v

# Update and upgrade system packages
sudo apt update && sudo apt upgrade -y


# ──────────────────────────────────────────
# Install Alacritty Terminal
# ──────────────────────────────────────────

sudo apt install -y alacritty

# Verify installation
if command -v alacritty &> /dev/null; then
  echo "Alacritty installed successfully: $(alacritty -V)"
else
  echo "Alacritty installation failed"
fi
