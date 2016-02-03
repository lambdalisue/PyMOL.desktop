#!/bin/bash
#==============================================================================
# Install a desktop file
#==============================================================================
root="$(cd "$(dirname $0)"; pwd)"
target="${HOME}/.local/share"

if [[ ! -d "$target" ]]; then
    mkdir -p "$target"
fi
cp -r $root/share/applications/* "$target/applications/"
cp -r $root/share/pymol/* "$target/pymol/"

sudo ln -s $target/pymol/script/run_pymol.sh /usr/local/bin/run_pymol.sh
