#!/usr/bin/env sh

script_dir=$(dirname "$0")

DOCKER_URL=https://download.docker.com/linux/static/stable/x86_64

get_max_version() {
    local max_version=0
    local current_version=0
    local prev_version=0
    
    for version in $@; do
        current_version=$(get_version $version)
        [ "$current_version" -gt "$prev_version" ] && max_version=$version
        prev_version=$current_version
    done
    
    echo $max_version
}

get_version() {
    echo $(echo $1 | grep -oEi "[0-9]+\.[0-9]+\.[0-9]+" | tr -d '.')
}

docker_install_binaries() {
    mkdir ${script_dir}/deps > /dev/null 2>&1
    
    docker_versions=$( curl ${DOCKER_URL}/ 2> /dev/null | grep -oEi "docker(-rootless-extras)?-[0-9]+\.[0-9]+\.[0-9]+\.tgz" )
    
    docker_ce_version=$(get_max_version "$(echo $docker_versions | grep -oEi "docker-[0-9]+\.[0-9]+\.[0-9]+\.tgz")")
    docker_rootless_extras_version=$(get_max_version "$(echo $docker_versions | grep -oEi "docker-rootless-extras-[0-9]+\.[0-9]+\.[0-9]+\.tgz")")
    
    [ -f "${script_dir}/deps/${docker_ce_version}" ] || curl -o ${script_dir}/deps/${docker_ce_version}               ${DOCKER_URL}/${docker_ce_version}
    [ -f "${script_dir}/deps/${docker_rootless_extras_version}" ] || curl -o ${script_dir}/deps/${docker_rootless_extras_version}  ${DOCKER_URL}/${docker_rootless_extras_version}
    
    tar xzvf ${script_dir}/deps/${docker_ce_version}                -C ${script_dir}/deps/
    tar xzvf ${script_dir}/deps/${docker_rootless_extras_version}   -C ${script_dir}/deps/
    
    cp ${script_dir}/deps/docker/* ${HOME}/.local/apps/docker/bin
    cp ${script_dir}/deps/docker-rootless-extras/* ${HOME}/.local/apps/docker/bin
    
    sudo curl -L "https://github.com/docker/compose/releases/download/1.29.2/docker-compose-$(uname -s)-$(uname -m)" \
    -o ${HOME}/.local/apps/docker/bin/docker-compose
    sudo chmod +x ${HOME}/.local/apps/docker/bin/docker-compose
}

docker_install() {
    sudo apt-get -yf install docker-ce docker-ce-cli containerd.io
    
    sudo groupadd docker
    sudo usermod -aG docker $USER
    
    sudo systemctl enable docker.service
    sudo systemctl enable containerd.service
}

docker_install