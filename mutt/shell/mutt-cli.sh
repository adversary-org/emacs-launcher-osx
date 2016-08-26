#!/bin/bash

source $HOME/.bash_profile
source $HOME/.bashrc

exec /usr/local/bin/mutt "$@"
