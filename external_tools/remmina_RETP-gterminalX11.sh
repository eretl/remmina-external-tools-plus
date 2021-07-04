#!/bin/sh

. $(dirname $0)/functions.sh
settitle

if [ -z $ssh_privatekey ]; then
    export CURR_SSH_COMMAND="ssh -X $ssh_proxycommand $username@$server"
else
    export CURR_SSH_COMMAND="ssh -X $ssh_proxycommand -i $ssh_privatekey $username@$server"
fi

gnome-terminal -- bash -c '$CURR_SSH_COMMAND ; $SHELL'
