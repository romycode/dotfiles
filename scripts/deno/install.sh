#!/usr/bin/env sh

version=$(
  curl --silent -H "Accept: application/vnd.github.v3+json" https://api.github.com/repos/denoland/deno/releases \
   | grep tag_name \
   | awk '{print $2}' \
   | tr -d '\"|,' \
   | head -n 1
)

deno_install() {
  sudo mkdir -p ${HOME}/.local/apps/cache/deno
  sudo chmod 775 ${HOME}/.local/apps/cache/deno

  curl -fsSL https://deno.land/x/install/install.sh | sudo DENO_INSTALL=${HOME}/.local/apps/deno sh -s "$version"
}

deno_install
