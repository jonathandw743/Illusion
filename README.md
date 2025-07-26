## Requirements

- [Lovely](https://github.com/ethangreen-dev/lovely-injector) - a Balatro injector.

## Installation

1. Install [Lovely](https://github.com/ethangreen-dev/lovely-injector?tab=readme-ov-file#manual-installation).
2. Download the [latest release](https://github.com/jonathandw743/Illusion/releases/) of this mod.
3. Unzip the folder, and move it into the `%appdata%/Balatro/Mods` folder (or `~/.steam/steam/steamapps/compatdata/2379780/pfx/drive_c/users/steamuser/AppData/Roaming/Balatro` on linux).
4. Restart the game to load the mod.

## Features

- Better pixel smoothing

## Details

Balatro uses double resolution sprite atlases with a linear sampler to achieve pixel smoothing. The effectiveness of this method is resolution-dependent: at high resolutions, sprites will look blurry and at low resolutions, sprites are aliased similarly to pixel smoothing to off.

[https://github.com/bladeSk/readabletro] replaces Balatro's pixel art with smoothed sprites. This mod retains the pixel art.