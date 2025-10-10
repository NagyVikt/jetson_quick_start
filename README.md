# Jetson Quick Start

Utility scripts and configuration tweaks to get NVIDIA Jetson developer kits up and running without wading through long setup guides. Each directory is self-contained; dip into the tooling you need and follow the detailed notes provided inside.

## Repository layout
- `installVSCode/` — Shell scripts for installing Visual Studio Code on arm64 Ubuntu, plus an option that also provisions Python tooling (pip, pylint, black, VS Code Python extension).
- `jetson-orin-gpio-patch/` — Device tree overlay, kernel patch, and examples that fix GPIO direction handling on JetPack 6.2 for Jetson Orin-based kits.

## Quick start
1. Clone or download this repository on the Jetson you are configuring.
2. Enter the directory that matches the task you are tackling.
3. Read the local `README.md` for step-by-step instructions, prerequisites, and testing notes.

## Highlights
- **VS Code on Jetson**: Run `installVSCode/installVSCode.sh` for a plain install, or `installVSCode/installVSCodeWithPython.sh` to add Python developer tooling automatically. Both scripts fetch the official Microsoft arm64 build.
- **GPIO fix for JetPack 6.2**: Use the overlay in `jetson-orin-gpio-patch/pin7_as_gpio.dts` to make Jetson Orin Pin 7 bidirectional, and apply `jetson-orin-gpio-patch/pinctrl-tegra-sfsel.patch` via `patch-for-pinctrl-sfsel.sh` if you also need the kernel driver fix.

## Requirements
- NVIDIA Jetson hardware running Ubuntu for Jetson (JetPack). The GPIO patch currently targets JetPack 6.2 on kernel 5.15.
- Sufficient disk space and sudo access for installing packages or patching kernel sources.
- `dtc` (device tree compiler) if you plan to build overlays, and the JetsonHacks kernel build tooling if you intend to rebuild the kernel with the supplied patch.

## Notes
- Each directory includes its own MIT-licensed content; review the individual `LICENSE` files for details.
- Commands that modify system packages or kernel sources may prompt for your password—ensure you understand the implications before running them.
