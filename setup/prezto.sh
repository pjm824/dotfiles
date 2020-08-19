#!/bin/zsh

if [ ! -d "${ZDOTDIR:-$HOME}/.zprezto" ]
then
  echo "installing prezto..."
  git clone --recursive https://github.com/sorin-ionescu/prezto.git "${ZDOTDIR:-$HOME}/.zprezto"
  
  setopt EXTENDED_GLOB
  for rcfile in "${ZDOTDIR:-$HOME}"/.zprezto/runcoms/^README.md(.N); do
    ln -s "$rcfile" "${ZDOTDIR:-$HOME}/.${rcfile:t}"
  done
else
  echo ".zprezto already exists.  not installing..."
fi
