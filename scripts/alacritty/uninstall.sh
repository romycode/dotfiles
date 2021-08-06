#!/usr/bin/env sh

script_dir=$(dirname "$0")

alacritty_uninstall() {
    sudo rm -r /etc/terminfo/a/alacritty

    rm -r ${HOME}/.local/apps/alacritty
    rm -r ${HOME}/.local/share/applications/Alacritty.desktop

    sudo update-desktop-database
}
