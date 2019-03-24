local choices = require("choices")

local function closeMapIfOpen(player)
    if player.render_mode ~= defines.render_mode.game then -- workaround for occasional crash (https://forums.factorio.com/viewtopic.php?f=7&t=68327)
        player.close_map()
    end
end

local function loadPreset(presetNumber, event)
    local player = game.players[event.player_index]
    local viewType = player.mod_settings["ZoomPresets_preset-" .. presetNumber .. "-view-type"].value
    local zoomLevel = player.mod_settings["ZoomPresets_preset-" .. presetNumber .. "-zoom-level"].value

    if viewType == choices.view_option.player then
        closeMapIfOpen(player)
        player.zoom = zoomLevel

    elseif viewType == choices.view_option.zoomToWorldView then
        local position = player.position

        -- while in player view or zoomToWorldView, zoom while centering on what player is pointing at
        if player.selected ~= nil then
            position = player.selected.position
        else
            -- if already is the zoomToWorldView (and the player is not pointing at anything) just change the zoom level
            if player.render_mode == defines.render_mode.chart_zoomed_in then
                player.zoom = zoomLevel
                do
                    return
                end
            end
        end

        closeMapIfOpen(player) -- workaround for occasional crash (https://forums.factorio.com/viewtopic.php?f=7&t=68327)
        player.zoom_to_world(position, zoomLevel)

    elseif viewType == choices.view_option.mapView then
        local position = player.position

        -- if in player view or zoomToWorldView, zoom while centering on what player is pointing at
        if player.selected ~= nil then
            position = player.selected.position
        end

        closeMapIfOpen(player) -- workaround for occasional crash (https://forums.factorio.com/viewtopic.php?f=7&t=68327)
        player.open_map(position, zoomLevel)
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
