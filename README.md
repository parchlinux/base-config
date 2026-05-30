# Parch Linux Base Config

This repository contains the base system configuration for Parch Linux under the `etc` tree.

The goal is to provide stable, practical defaults for core Linux services and system behavior without introducing desktop-environment-specific policy.

This project intentionally excludes KDE and other desktop environment configuration.

This project also intentionally excludes font configuration.

The current working scope is limited to non-desktop, non-font system configuration domains including kernel and sysctl tuning, systemd defaults, udev rules, NetworkManager defaults, PipeWire and WirePlumber defaults, Bluetooth service defaults, shell and editor defaults, tmpfiles policy, and updatedb policy.

The repository is designed to be packaged as a base configuration unit where files under `etc` are installed as distribution defaults.

License: BSD 3-Clause License. See `LICENSE`.
