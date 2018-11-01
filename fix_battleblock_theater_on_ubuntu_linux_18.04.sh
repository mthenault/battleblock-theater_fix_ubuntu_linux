#!/bin/bash
# stop on errors
set -ex
# change if your game is installed somewhere else
BATTLEBLOCK_BIN="/home/$USER/.steam/steam/steamapps/common/BattleBlock Theater/BattleBlockTheater"
# install missing libs
sudo apt-get install libxxf86vm1:i386 libglu1-mesa:i386 libopenal1:i386 libssl1.0.0:i386
# install bsdiff
sudo apt-get install bsdiff
# move the current bin
mv "$BATTLEBLOCK_BIN" "$BATTLEBLOCK_BIN".save
# patch the bin
bspatch "$BATTLEBLOCK_BIN".save "$BATTLEBLOCK_BIN" patch.bin
