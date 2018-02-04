#!/bin/bash

source $HOME/.bash_profile
source $HOME/.bashrc

/usr/bin/open -a /Applications/iTerm.app -n --args exec mutt "$@"
