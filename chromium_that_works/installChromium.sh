#!/usr/bin/env bash
set -euo pipefail

echo "Installing Flatpak..."
sudo apt update
sudo apt install -y flatpak

echo "Adding Flathub (if missing)..."
sudo flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo

echo "Installing Chromium (Flatpak)..."
sudo flatpak install -y flathub org.chromium.Chromium

echo "Done. Launch with: flatpak run org.chromium.Chromium"
