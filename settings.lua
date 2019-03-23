local choices = require("choices")

data:extend({
	{
		type = "double-setting",
		name = "ZoomPresets_preset-1-zoom-level",
		setting_type = "runtime-per-user",
        default_value = 3.0,
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
		default_value = 0.275,
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
})
