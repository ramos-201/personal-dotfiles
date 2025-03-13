#!/bin/bash

LOG_FILE="install.log"

rm -f "$LOG_FILE"

log() {
  echo "$1" | tee -a "$LOG_FILE"
}

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

log "Installing Alacritty..."
sudo apt install -y alacritty

# Verify installation
if command -v alacritty &> /dev/null; then
  log "Alacritty installed successfully: $(alacritty -V)"
else
  log "Alacritty installation failed"
fi
