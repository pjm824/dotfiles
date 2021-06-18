#!/bin/sh

if [ ! -d ~/.sdkman ]
then
  curl -s "https://get.sdkman.io" | zsh
else
  echo "~/.sdkman already exists.  not installing sdkman..."
fi
