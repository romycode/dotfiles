#!/usr/bin/env sh

script_dir=$(dirname "$0")

go_uninstall() {
    rm -r ${HOME}/.local/apps/go
}

go_uninstall