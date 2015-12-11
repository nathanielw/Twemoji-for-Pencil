# Emoji for Pencil

Twitter Emoji as a Pencil stencil collection - drag-and-drop emoji into your mockups! :thumbsup:

*Check out my other stencil collections for Pencil at [nathanielw.github.io/pencil-stencils](http://nathanielw.github.io/pencil-stencils/)*

## Installation
- Download the [latest release](https://github.com/nathanielw/Twemoji-for-Pencil/releases/latest) zip file. (Make sure you grab the _twemoji-for-pencil-vx.x.x.zip_ file, not the source code zip).
- Install the collection in Pencil by going to *Tools > Install new collection* and selecting the zip.
- Enjoy!

### Updating
Right-click on the collection in Pencil's sidebar and choose _Uninstall this collection_ before repeating the installation steps.

## Generating the Collection
- Clone this repo with the `--recursive` flag to include submodules. (or just clone it normally then `git submodule init` and `git submodule update`)
- Run the `generate-xml.py` script (tested with Python 3.4).

This will generate the stencil definition XML and png thumbnails and place them in the `gen/` folder.

Everything **inside** the `gen/` folder can then be zip'd and installed in Pencil.

Windows users wanting to **generate** the collection: see [this comment](https://github.com/nathanielw/Material-Icons-for-Pencil/issues/2#issuecomment-108849198).

## License
Emoji graphics are by Twitter and are licensed under [CC-BY 4.0](https://creativecommons.org/licenses/by/4.0/). Please check the [Attribution Requirements](https://github.com/twitter/twemoji#attribution-requirements) for using the emoji.

All source code/scripts used to generate the Pencil stencil are released under the [MIT License](LICENSE).
