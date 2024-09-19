# pdf-diff

![screenshot](https://github.com/rept0id/pdf-image-diff/blob/main/doc/screenshots/screenshot.png)

## How to Use

Following installation, simply find and run "Pdf Image Diff" from your applications list.

This is a graphical user tool and it's not intended to be used from the command line, as it's simply provides a graphical interface for already existing tools.

You will be prompted to select the initial PDF and the subsequent PDF for comparison. Wait a few seconds. Upon completion of the comparison, you'll be asked if you want to:
- Open the result PDF and the result folder
- Open the result PDF
- Open the result folder
- Do nothing

The result folder contains the original PDF and the result PDF (with differences highlighted in red).

## Installation Instructions

You can find packages on the releases.

Currelntly, there is only .deb.

### Debian - based systems (Debian, Ubuntu, e.t.c...)

`sudo apt-get install pdf-image-diff.deb`

## Dependencies

- `img2pdf`
- `image-magick` (compare)
- `zenity`

## (For developers) Ghostscript workaround

`img2pdf` is a required dependency and will be automatically installed during the setup process.

This is necessary because ImageMagick uses `GhostScript` to convert PDFs to images. `GhostScript` can be unsafe (some PDFs contain malicious code that can be executed) and requires a safety policy adjustment, which is both risky and a significant hassle.

In contrast, `img2pdf` uses Python tools for the same task, which are well-maintained, open-source, modern, safer, and easier for developers to use.

`ImageMagick` is still used for comparison (compare), which does not involve GhostScript.

## (For developers) Packaging Process

### Debian

Execute the following command:
`make build_deb`

Within the "package" folder, you will discover the packaging wrappers and if you run packaging script, the packages themselves.
