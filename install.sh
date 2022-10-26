#!/bin/bash
# This script install or the utilities in the current directory.

sudo almost enter rw

for file in $(ls -1); do
    if [ "$file" != "install.sh" ]; then
        sudo rm -f /usr/bin/$file
        sudo cp $file /usr/bin
        sudo chmod +x /usr/bin/$file
    fi
done

sudo almost enter ro