#!/bin/bash
set -euxo pipefail

SHARED_DIRECTORY="$HOME/python-shared-server"
SERVER_SCRIPT="$HOME/.python-shared-server-main/pwd-http-server.py"

# init shared directory
init() {
   if [ ! -d "$SHARED_DIRECTORY" ]; then
       mkdir "$SHARED_DIRECTORY"
       echo "Folder '$SHARED_DIRECTORY' created."
   else
       echo "Folder '$SHARED_DIRECTORY' already exists."
   fi
}

# start server
run() {
    cd $SHARED_DIRECTORY
    python3 $SERVER_SCRIPT
}

init
run