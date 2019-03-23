# prepare zip file
mkdir ZoomPresets_1.0.0
cp info.json ZoomPresets_1.0.0
cp README.md ZoomPresets_1.0.0
cp LICENSE ZoomPresets_1.0.0
cp thumbnail.png ZoomPresets_1.0.0
cp *.lua ZoomPresets_1.0.0
cp -R locale ZoomPresets_1.0.0
zip -r ZoomPresets_1.0.0{.zip,}

# move zip to factorio mods folder (overriding existing one if present)
mv ZoomPresets_1.0.0.zip "/cygdrive/c/Users/${USER}/AppData/Roaming/Factorio/mods"

# cleanup
rm -r ZoomPresets_1.0.0
