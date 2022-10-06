#!/bin/bash
# This script install or the utilities in the current directory.

for file in $(ls -1); do
    if [ "$file" != "install.sh" ]; then
        sudo rm -f /usr/bin/$file
        sudo cp $file /usr/bin
        sudo chmod +x /usr/bin/$file
    fi
done
