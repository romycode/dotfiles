#!/usr/bin/env sh

#------------- DOTFILES APPS -------------#
export DOTFILES_APPS_INSTALL_PATH="${HOME}/.local/apps"

#------------- NVM -------------#
export NVM_DIR="${DOTFILES_APPS_INSTALL_PATH}/node/nvm"
export NVM_INC="${DOTFILES_APPS_INSTALL_PATH}/node/nvm/inc"
export NVM_BIN="${DOTFILES_APPS_INSTALL_PATH}/node/bin"

#------------- Deno(land) -------------#
export DENO_INSTALL="${DOTFILES_APPS_INSTALL_PATH}"
export DENO_INSTALL_ROOT="${DOTFILES_APPS_INSTALL_PATH}/deno/bin"
export DENO_DIR="${DOTFILES_APPS_INSTALL_PATH}/cache/deno"

#------------- Go(lang) -------------#
export GOROOT="${DOTFILES_APPS_INSTALL_PATH}/golang/goroot"
export GOPATH="${DOTFILES_APPS_INSTALL_PATH}/golang/gopath"
export GOCACHE="${DOTFILES_APPS_INSTALL_PATH}/cache/go"
export GOENV="${DOTFILES_APPS_INSTALL_PATH}/config/go/env"

#------------- Rust -------------#
export CARGO_PATH="${HOME}/.cargo"

#------------- Java -------------#
export JAVA_VERSION="11.0.11+9"
export JAVA_HOME="${DOTFILES_APPS_INSTALL_PATH}/java/jdk-${JAVA_VERSION}"

#------------- PATH -------------#
export path=(
    "${DOTFILES_APPS_INSTALL_PATH}/java/jdk-${JAVA_VERSION}/bin"
    "${DOTFILES_APPS_INSTALL_PATH}/golang/goroot/bin"
    "${DOTFILES_APPS_INSTALL_PATH}/jetbrains/bin"
    "${DOTFILES_APPS_INSTALL_PATH}/alacritty/bin"
    "${DOTFILES_APPS_INSTALL_PATH}/docker/bin"
    "${DOTFILES_APPS_INSTALL_PATH}/deno/bin"
    "${DOTFILES_APPS_INSTALL_PATH}/rofi/bin"
    "${DOTFILES_APPS_INSTALL_PATH}/nvim/bin"
    "${DOTFILES_PATH}/bin"
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
