#!/usr/bin/env sh

script_dir=$(dirname "$0")

rofi_install() {
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
        libxcb-xinerama0-dev libxcb-cursor-dev

    (
        cd ${script_dir}/deps/rofi
        sudo mkdir -p "${HOME}/.local/apps/rofi" build

        autoreconf --install

        cd build
        sudo ../configure --disable-check --prefix="${HOME}/.local/apps/rofi"
        sudo make
        sudo make install
    )
}

rofi_install
