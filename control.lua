script.on_event("ZoomPresets_key-1", function(event)
    local player = game.players[event.player_index]
    player.zoom = player.mod_settings["ZoomPresets_preset-1-zoom-level"].value
end)

script.on_event("ZoomPresets_key-2", function(event)
    local player = game.players[event.player_index]
    player.zoom = player.mod_settings["ZoomPresets_preset-2-zoom-level"].value
end)