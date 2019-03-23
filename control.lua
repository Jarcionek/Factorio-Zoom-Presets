local choices = require("choices")

script.on_event("ZoomPresets_key-1", function(event)
    local player = game.players[event.player_index]
    local viewType = player.mod_settings["ZoomPresets_preset-1-view-type"].value
    local zoomLevel = player.mod_settings["ZoomPresets_preset-1-zoom-level"].value

    if viewType == choices.view_option.player then
        player.close_map()
        player.zoom = zoomLevel
    elseif viewType == choices.view_option.zoomToWorldView then
        player.zoom_to_world({ 0, 0 }, zoomLevel)
    elseif viewType == choices.view_option.mapView then
        player.open_map({ 0, 0 }, zoomLevel)
    end
end)

script.on_event("ZoomPresets_key-2", function(event)
    local player = game.players[event.player_index]
    player.zoom = player.mod_settings["ZoomPresets_preset-2-zoom-level"].value
end)
