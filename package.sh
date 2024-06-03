#!/bin/bash

sudo apt-get update
sudo apt-get install dpkg-dev

dpkg-deb --build src
mv src.deb pdf-image-diff.deb
