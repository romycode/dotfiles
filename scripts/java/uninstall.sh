#!/usr/bin/env sh

script_dir=$(dirname "$0")

java_uninstall() {
    local java_version=$JAVA_VERSION
    local java_version_url=$(echo $java_version | tr '+' '_')
    
    local java_jdk="OpenJDK11U-jdk_x64_linux_hotspot_${java_version_url}.tar.gz"
    
    mkdir "${script_dir}/deps" "${HOME}/.local/apps/java"
    
    local url="https://github.com/AdoptOpenJDK/openjdk11-binaries/releases/download/jdk-${java_version}/${java_jdk}"
    [ -f "${script_dir}/deps/${java_jdk}" ] || curl -o "${script_dir}/deps/${java_jdk}" -L "$url"
    
    tar xzf "${script_dir}/deps/${java_jdk}" -C "${HOME}/.local/apps/java"
}

java_uninstall