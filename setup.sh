#!/usr/bin/env bash
#
PAQ_DIRECTORY="${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/pack/paqs/start/paq-nvim

if [[ ! -d "${PAQ_DIRECTORY}" ]]; then
  echo "Downloading paq-nvim to ${PAQ_DIRECTORY}"
  git clone --depth=1 https://github.com/savq/paq-nvim.git \
    "${PAQ_DIRECTORY}"
fi

nvim +PaqSync +q

