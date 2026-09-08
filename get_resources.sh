#!/bin/bash
set -e

(
    cd Resources/vim
    if [ ! -f "autoload/vimball.vim" ]; then
        echo "Downloading Vim runtime..."
        curl -L https://github.com/blinksh/vim/releases/download/v9.1.0187/runtime.zip -o runtime.zip
        unzip -qo runtime.zip
        cp -R runtime/* ./ 2>/dev/null || true
        rm -rf runtime runtime.zip
    fi
)

echo "Resources ready"
