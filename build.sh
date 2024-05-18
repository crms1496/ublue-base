#!/bin/bash

set -ouex pipefail

RELEASE="$(rpm -E %fedora)"

### Add additional repositories

curl -Lo /etc/yum.repos.d/tailscale.repo https://pkgs.tailscale.com/stable/fedora/tailscale.repo

### Install packages

# Packages can be installed from any enabled yum repo on the image.
# RPMfusion repos are available by default in ublue main images
# List of rpmfusion packages can be found here:
# https://mirrors.rpmfusion.org/mirrorlist?path=free/fedora/updates/39/x86_64/repoview/index.html&protocol=https&redirect=1

rpm-ostree install byobu duperemove fish mosh podman-compose tailscale \
    cockpit cockpit-machines cockpit-networkmanager cockpit-ostree cockpit-pcp cockpit-podman cockpit-selinux cockpit-storaged cockpit-systemd
