# PDF-Image-Diff

## How to Use

Following installation, simply execute PDF-Image-Diff. You will be prompted to select the initial PDF and the subsequent PDF for comparison. Wait some seconds. Upon completion of the comparison, seven PDFs will open, each reflecting varying levels of difference tolerance. Select the one that best aligns with your preferences.

## Installation Instructions

For Debian-based systems:
`sudo apt-get install ./pdf-image-diff.deb`

## Dependencies

"img2pdf" is a necessary dependency and will be automatically installed during the installation process. This necessity arises due to the reluctance of GhostScript and ImageMagick, which utilize GhostScript, to convert without compromising on safety policy adjustments. Utilizing Python Imaging Library (Pillow) instead of GhostScript, img2pdf provides a seamless alternative.

## Packaging Process

Execute the following command:
`sudo bash ./package.sh`
