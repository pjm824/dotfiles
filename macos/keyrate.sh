#!/bin/sh

# need to reboot to take effect

defaults write -g InitialKeyRepeat -int 11 # normal minimum is 15 (225 ms)
defaults write -g KeyRepeat -int 1 # normal minimum is 2 (30 ms)
