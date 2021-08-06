#!/usr/bin/env sh

script_dir=$(dirname "$0")

deno_update() {
  deno upgrade
}

deno_update