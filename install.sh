#!/usr/bin/env bash
#
# Run all dotfiles installers.

set -e

# Find DOTFILES directory
if [ -d "$HOME/.dotfiles" ]; then
    DOTFILES_BASE="$HOME/.dotfiles"
elif [ -d "$HOME/dotfiles"]; then
    DOTFILES_BASE="$HOME/dotfiles"
else # exit if there is no dotfiles directory
    echo Could not find dotfiles directory
    exit 1 
fi

# find the installers and run them iteratively
find $DOTFILES_BASE -name install.sh | while read installer ; do sh -c "${installer}" ; done