#!/usr/bin/env sh

rofi_uninstall() {
    sudo apt-get install -y \
        make automake autoconf \
        pkg-config flex bison \
        gcc libtool texinfo \
        libpango1.0-dev libcairo2-dev \
        libglib2.0-dev libgdk-pixbuf2.0-dev \
        libstartup-notification0-dev \
        libxkbcommon-dev libxkbcommon-x11-dev \
        libxcb1-dev libxcb-util-dev \
        libxcb-ewmh-dev libxcb-icccm4-dev \
        libxcb-xrm-dev libxcb-randr0-dev \
        libxcb-xinerama0-dev
}