# Chromium on Jetson via Flatpak

Install the Chromium browser on NVIDIA Jetson devices by leveraging Flatpak builds provided through Flathub.

## Steps
```bash
# 1) Ensure Flatpak is present
sudo apt update
sudo apt install -y flatpak

# 2) Add Flathub (the app registry)
sudo flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo

# 3) Install Chromium (ARM64 build)
sudo flatpak install -y flathub org.chromium.Chromium

# 4) Launch
flatpak run org.chromium.Chromium
```

Flatpak will prompt to confirm downloads the first time you add Flathub or install Chromium; review the prompts and accept to proceed.
