local choices = require("choices")

local function loadPreset(presetNumber, event)
    local player = game.players[event.player_index]
    local viewType = player.mod_settings["ZoomPresets_preset-" .. presetNumber .. "-view-type"].value
    local zoomLevel = player.mod_settings["ZoomPresets_preset-" .. presetNumber .. "-zoom-level"].value

    if viewType == choices.view_option.player then
        player.close_map()
        player.zoom = zoomLevel
    elseif viewType == choices.view_option.zoomToWorldView then
        player.close_map() -- workaround for occasional crash (https://forums.factorio.com/viewtopic.php?f=7&t=68327)
        player.zoom_to_world(player.position, zoomLevel)
    elseif viewType == choices.view_option.mapView then
        player.close_map() -- workaround for occasional crash (https://forums.factorio.com/viewtopic.php?f=7&t=68327)
        player.open_map(player.position, zoomLevel)
    end
end

script.on_event("ZoomPresets_key-1", function(event)
    loadPreset(1, event)
end)

script.on_event("ZoomPresets_key-2", function(event)
    loadPreset(2, event)
end)

script.on_event("ZoomPresets_key-3", function(event)
    loadPreset(3, event)
end)

script.on_event("ZoomPresets_key-4", function(event)
    loadPreset(4, event)
end)
