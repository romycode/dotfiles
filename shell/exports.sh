#!/usr/bin/env sh

#------------- DOTFILES APPS -------------#
export DOTFILES_APPS_INSTALL_PATH="${HOME}/.local/apps"

#------------- Deno(land) -------------#
export DENO_INSTALL="${DOTFILES_APPS_INSTALL_PATH}/deno"

#------------- Go(lang) -------------#
export GOROOT="${DOTFILES_APPS_INSTALL_PATH}/golang/goroot"
export GOPATH="${DOTFILES_APPS_INSTALL_PATH}/golang/gopath"

#------------- Rust -------------#
export CARGO_PATH="${HOME}/.cargo"

#------------- Java -------------#
export JAVA_HOME="${HOME}/.vm/java/current"

#------------- PATH -------------#
export path=(
#    "${DOTFILES_APPS_INSTALL_PATH}/alacritty/bin"
#    "${DOTFILES_APPS_INSTALL_PATH}/rofi/bin"
#    "${DOTFILES_APPS_INSTALL_PATH}/firefox"
#    "${DOTFILES_APPS_INSTALL_PATH}/docker/bin"
    "${DOTFILES_APPS_INSTALL_PATH}/golang/goroot/bin"
    "${DOTFILES_APPS_INSTALL_PATH}/golang/gopath/bin"
    "${DOTFILES_APPS_INSTALL_PATH}/terraform/bin"
    "${DOTFILES_APPS_INSTALL_PATH}/jetbrains/bin"
    "${DOTFILES_APPS_INSTALL_PATH}/vscode/bin"
    "${DOTFILES_APPS_INSTALL_PATH}/ngrok/bin"
    "${DOTFILES_APPS_INSTALL_PATH}/deno/bin"
    "${DOTFILES_APPS_INSTALL_PATH}/pnpm/bin"
    "${DOTFILES_APPS_INSTALL_PATH}/postman/app"
    "${HOME}/.amvm/nodejs/current/bin"
    "${HOME}/.amvm/java/current/bin"
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
