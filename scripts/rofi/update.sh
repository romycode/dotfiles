#!/usr/bin/env sh

script_dir=$(dirname "$0")

rofi_update() {
  (
    git submodule update --recursive --remote
  )
}

rofi_update

. "${script_dir}/install.sh"
