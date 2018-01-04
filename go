#!/bin/bash

set -eu

function install {
  local package="$1"
  local target="$HOME/.$1"
  local source="$(pwd)/$1"

  if [[ -h $target ]];
  then
    echo "${target}: Already symlinked"
  elif [[ -f $target ]] || [[ -d $target ]];
  then
    echo "${target}: Could not be symlinked due to conflict"
  else
    ln -s $source $target
    echo "${target}: Installed"
  fi
}

function task_install {
  install "vimrc"
  install "vim"
}

function task_usage {
  echo "usage: $0 install"
  exit 1
}

cmd=${1:-}
shift || true
case "$cmd" in
  install) task_install ;;
  *) task_usage ;;
esac

