#!/usr/bin/bash

set -e

# install ruby language server
gem install --user-install solargraph

# install python language server
npm install --global pyright

# install html, css and json language server
npm install --global vscode-langservers-extracted

# install typescript language server
npm install --global typescript typescript-language-server
