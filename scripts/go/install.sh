#!/usr/bin/env sh

script_dir=$(dirname "$0")

url=$(
  wget -O - https://golang.org/dl/ |
    grep '<a class="download"' |
    grep "linux-amd" |
    grep -oe '\"/dl/.*\"' |
    tr -d \" |
    awk '{print "https://golang.org/"$1}' |
    head -n 1
)
file=$(echo $url | awk '{print substr($1, 24)}')

go_install() {
  sudo mkdir -p ${script_dir}/deps

  (
    cd ${script_dir}/deps
    wget $url go
    sudo tar -C ${HOME}/.local/apps -xzf "$file"

    rm -rf "$file"
  )
}

go_install
