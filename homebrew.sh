#!/usr/bin/env bash

if ! [ -x "$(command -v brew)" ]; then
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"
else
    brew update > /dev/null
fi

brew bundle check > /dev/null
if [ $? -ne 0 ]; then
    brew -v bundle
fi
