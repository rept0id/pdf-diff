#!/bin/bash

# Check if dpkg-dev is installed
if ! dpkg -l | grep -q dpkg-dev; then
    # Prompt user for confirmation
    read -p "build_deb: dpkg-dev is not installed. Do you want to install it using apt-get? (y/n): " response
    
    if [[ "$response" == "y" || "$response" == "Y" ]]; then
        # Install dpkg-dev if user agrees
        sudo apt-get update
        sudo apt-get install -y dpkg-dev
    else
        echo "build_deb: Installation of dpkg-dev has been skipped."
    fi
else
    echo "build_deb: dpkg-dev is already installed."
fi

# Clear any previous deb dist
rm -rf ./dist/deb

# Copy executable to Debian's dist src
mkdir -p ./dist/deb
cp -r ./packaging/templates/deb/* ./dist/deb/
mkdir -p ./dist/deb/src/usr/bin
cp ./src/pdfimagediff ./dist/deb/src/usr/bin/pdfimagediff

# Move (cd) to Debian's packaging wrapper and package and then back
cd ./dist/deb
dpkg-deb --build src
cd ../../

# Rename the .deb with a more self-explanatory name
mv ./dist/deb/src.deb ./dist/deb/pdf-image-diff.deb

echo "build_deb: done"

exit 0