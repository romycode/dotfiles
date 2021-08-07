#!/usr/bin/env sh

# DOTFILES APPS
export DOTFILES_APPS_INSTALL_PATH="${HOME}/.local/apps"

# NVM(node version manager)
export NVM_DIR="$HOME/.nvm"

# Deno(land)
export DENO_INSTALL="$DOTFILES_APPS_INSTALL_PATH"

# GO(lang)
export GOROOT="${DOTFILES_APPS_INSTALL_PATH}/go"
export GOPATH="${HOME}/code/go"

# Rust
export CARGO_PATH="${HOME}/.cargo"

# Java
export JAVA_VERSION="11.0.11+9"
export JAVA_HOME="${HOME}/.local/apps/java/jdk-${JAVA_VERSION}"

# Dinamic path
export path=(
    "${DOTFILES_APPS_INSTALL_PATH}/java/jdk-${JAVA_VERSION}/bin"
    "${DOTFILES_APPS_INSTALL_PATH}/jetbrains/bin"
    "${DOTFILES_APPS_INSTALL_PATH}/alacritty/bin"
    "${DOTFILES_APPS_INSTALL_PATH}/docker/bin"
    "${DOTFILES_APPS_INSTALL_PATH}/deno/bin"
    "${DOTFILES_APPS_INSTALL_PATH}/rofi/bin"
    "${DOTFILES_APPS_INSTALL_PATH}/go/bin"
    "${DOTFILES_APPS_INSTALL_PATH}/nvim/bin"
    "${CARGO_PATH}/bin"
    "${HOME}/snap/bin"
    "/usr/local/games"
    "/usr/local/sbin"
    "/usr/local/bin"
    "/usr/games"
    "/snap/bin"
    "/usr/sbin"
    "/usr/bin"
    "/sbin"
    "/bin"
)

PATH=$(
    IFS=":"
    echo "${path[*]}"
)

export PATH
