#!/usr/bin/zsh -i

set -o errexit
set -o nounset
set -o pipefail

# Install runtime
asdf plugin-add python
asdf install

# Make sure symlink are correctly set
asdf reshim

# Install Python dependencies
pip install --upgrade pip
pip install -r requirements-gpu.txt
