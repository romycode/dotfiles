#!/usr/bin/env sh

script_dir=$(dirname "$0")

alacritty_update() {
  (
    git submodule update --recursive --remote
  )
}

alacritty_update
sh ${script_dir}/install.sh
