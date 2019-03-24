local choices = require("choices")

data:extend({
    {
        type = "double-setting",
        name = "ZoomPresets_preset-1-zoom-level",
        setting_type = "runtime-per-user",
        default_value = 1.0,
        maximum_value = 10.0,
        minimum_value = 0.0001,
        order = "1a"
    },
    {
        type = "string-setting",
        name = "ZoomPresets_preset-1-view-type",
        setting_type = "runtime-per-user",
        default_value = choices.view_option.player,
        allowed_values = choices.view_option,
        order = "1b"
    },
    {
        type = "double-setting",
        name = "ZoomPresets_preset-2-zoom-level",
        setting_type = "runtime-per-user",
        default_value = 0.2,
        maximum_value = 10.0,
        minimum_value = 0.0001,
        order = "2a"
    },
    {
        type = "string-setting",
        name = "ZoomPresets_preset-2-view-type",
        setting_type = "runtime-per-user",
        default_value = choices.view_option.player,
        allowed_values = choices.view_option,
        order = "2b"
    },
    {
        type = "double-setting",
        name = "ZoomPresets_preset-3-zoom-level",
        setting_type = "runtime-per-user",
        default_value = 0.15,
        maximum_value = 10.0,
        minimum_value = 0.0001,
        order = "3a"
    },
    {
        type = "string-setting",
        name = "ZoomPresets_preset-3-view-type",
        setting_type = "runtime-per-user",
        default_value = choices.view_option.zoomToWorldView,
        allowed_values = choices.view_option,
        order = "3b"
    },
    {
        type = "double-setting",
        name = "ZoomPresets_preset-4-zoom-level",
        setting_type = "runtime-per-user",
        default_value = 0.003,
        maximum_value = 10.0,
        minimum_value = 0.0001,
        order = "4a"
    },
    {
        type = "string-setting",
        name = "ZoomPresets_preset-4-view-type",
        setting_type = "runtime-per-user",
        default_value = choices.view_option.mapView,
        allowed_values = choices.view_option,
        order = "4b"
    }
})
