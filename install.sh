#!/bin/bash

if ! command -v node &> /dev/null || ! command -v npm &> /dev/null; then
    if [ "$(uname)" == "Linux" ]; then
        curl -fsSL https://deb.nodesource.com/setup_21.x | sudo -E bash -
        sudo apt-get install -y nodejs
    elif [ "$(uname)" == "Darwin" ]; then
        brew install node
    else
        echo "Unsupported operating system: $(uname)"
        exit 1
    fi
else
    echo "Node.js and npm are already installed."
fi

if ! command -v gulp &> /dev/null; then
    npm i -g gulp-cli
fi
make