#!/usr/bin/env sh

docker_uninstall() {
    sudo systemctl disable docker.service
    sudo systemctl disable containerd.service
    
    sudo apt-get purge docker-ce docker-ce-cli containerd.io
    
    sudo rm -rf /var/lib/docker
    sudo rm -rf /var/lib/containerd
    
}

docker_uninstall