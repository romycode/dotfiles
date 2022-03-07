#!/usr/bin/env sh

script_dir=$(dirname "$0")

alacritty_install() {
  sudo apt-get install \
    python3 cmake pkg-config \
    libfreetype6-dev libfontconfig1-dev \
    libxcb-xfixes0-dev libxkbcommon-dev

  which cargo || curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- -yq

  (
    cd "${script_dir}"/deps/alacritty || exit

    cargo build --release

    # shellcheck disable=SC2086
    sudo mkdir -p "${HOME}"/.local/apps/alacritty/bin "${HOME}"/.local/apps/alacritty/icon

    # shellcheck disable=SC2086
    sudo cp -rf target/release/alacritty "${HOME}"/.local/apps/alacritty/bin/alacritty
    sudo cp -rf extra/logo/compat/alacritty-term.png "${HOME}"/.local/apps/alacritty/icon/alacritty.png

    echo "[Desktop Entry]
Type=Application
Exec=${HOME}/.local/apps/alacritty/bin/alacritty
Icon=${HOME}/.local/apps/alacritty/icon/alacritty.png
Terminal=false
Categories=System;TerminalEmulator;

Name=Alacritty
GenericName=Terminal
Comment=A fast, cross-platform, OpenGL terminal emulator
StartupWMClass=Alacritty
Actions=New;

[Desktop Action New]
Name=New Terminal
Exec=${HOME}/.local/apps/alacritty/alacritty" > "${HOME}"/.local/share/applications/Alacritty.desktop

    sudo update-desktop-database
  )

}

alacritty_install
