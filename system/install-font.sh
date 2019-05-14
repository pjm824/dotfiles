#!/bin/sh

# todo handle non macos enviornments

fontname="Droid Sans Mono for Powerline Nerd Font Complete.otf"
fontlink=https://github.com/ryanoasis/nerd-fonts/raw/master/patched-fonts/DroidSansMono/complete/Droid%20Sans%20Mono%20Nerd%20Font%20Complete.otf

if [[ "$(uname -s)" == "Darwin" ]]; then
  cd ~/Library/Fonts && curl -fLo "$fontname" $fontlink
fi

