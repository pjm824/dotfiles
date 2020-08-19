#!/bin/sh

if [ ! -d ~/.tmux/plugins/tpm ]
then
  git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
else
  echo "~/.tmux/plugins/tpm already exists.  not installing..."
fi
