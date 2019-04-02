# Factorio-Zoom-Presets

Factorio mod to quickly change zoom level to the desired values.


# Description

Four configurable keys to set desired zoom level and view type. Allows to zoom out farther than in the base game. With a single key press you can open a map maximally zoomed out. With another key press you can see a large world area around you. No more scrolling with your mouse wheel!


# Configuration

![Mod Settings](https://raw.githubusercontent.com/Jarcionek/Factorio-Zoom-Presets/master/settings.png)

For each of the four presets, you can configure the following properties:

## Zoom level (in Settings / Mod Settings)

Defines how much (or how little) you can see. Decrease it to zoom out. Be careful with values lower than 0.1 as it might cause performance problems.
To give you an idea of what the numbers mean, these are the values defined by the base game:

* 3 - maximum zoom in (whether on map or not)
* 1 - that's the zoom level that you start with when you load a game
* 0.4 - maximum player zoom out; while on the map, this is the zoom-to-world threshold
* 0.0035 - maximum zoom out on the map

## View type (in Settings / Mod Settings)

Defines whether the to open (and in which mod) or close a map:

* Player = map closed
* Zoom to World View = map open in world view where interacting with entities is possible
* Map View = map open in the pixelated view (like where you don't have radar coverage)

## Key bindings (in Settings / Controls)

Default bindings are CTRL + 1, CTRL + 2, CTRL + 3, CTRL + 4 which you can change in the game controls


# Known Issues

* Changing from "Map View" to "Zoom to World View" resets the map's position to player's position. This is a limitation in Factorio's modding API which I have already raised to their development team.
* There is similar limitation when changing view type in the other direction (i.e. zooming out to map), however, if you hover over a game entity, the mod will use this entity's position rather than player's position.


# Changelog

### 1.0.1 (29/03/2019)

* Removed workarounds for fixed bugs.
* Added workarounds for bugs introduced in 0.17.22.
* As a result, version 0.17.22 is now required.

### 1.0.0 (24/03/2019)

* Initial release.
