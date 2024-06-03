#!/bin/bash

### # Debian # ###

# Packaging Dependencies
sudo apt-get update
sudo apt-get install dpkg-dev
# Move executable to Debian's packaging wrapper
cp ./src/pdfimagediff ./package/deb/src/usr/bin/pdfimagediff
# Move to Debian's packaging wrapper and package
cd ./package/deb
dpkg-deb --build src
# Rename the .deb with a more self-explanatory name
mv src.deb pdf-image-diff.deb
# Move back
cd ../../..
