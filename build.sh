#!/usr/bin/env bash
# SPDX-FileCopyrightText: 2020 Nathaniel Fitzenrider <https://github.com/nfitzen>
#
# SPDX-License-Identifier: MIT

if command -v zip; then
    ZIP="zip -r";
else
    ZIP="7z a";
fi

rm -r .build/
mkdir .build releases .build/files

cp -r data/ ./pack.mcmeta .build/files/

cp -r libs/AESTD/ .build/

cp -r .reuse/ LICENSE LICENSES/ README.md .build/files

cd .build

cp -rn AESTD/data/aestd*/ files/data
rm -rf files/data/aestd.tools/ # kinda inefficient but whatever
cp -rn AESTD/data/load/ files/data/
cp -r AESTD/data/minecraft/loot_tables/ files/data/minecraft/

cd files

rm ../../releases/NetherRoyale-$(git describe --tags --dirty).zip

$ZIP ../../releases/NetherRoyale-$(git describe --tags --dirty).zip .reuse/ data/ LICENSE LICENSES/ pack.mcmeta README.md

# cd ../..

# cp .build/NetherRoyale.zip releases/
