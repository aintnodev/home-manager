require("full-border"):setup({
	type = ui.Border.PLAIN,
})

require("yatline"):setup({
	section_separator = { open = "", close = "" },
	part_separator = { open = "", close = "" },
	inverse_separator = { open = "", close = "" },

	padding = { inner = 1, outer = 1 },

	style_a = {
		bg = "blue",
		fg = "black",
		bg_mode = {
			normal = "blue",
			select = "magenta",
			un_set = "green",
		},
	},
	style_b = { bg = "reset", fg = "brightwhite" },
	style_c = { bg = "reset", fg = "brightwhite" },

	permissions_t_fg = "green",
	permissions_r_fg = "yellow",
	permissions_w_fg = "red",
	permissions_x_fg = "cyan",
	permissions_s_fg = "white",

	tab_width = 20,

	selected = { icon = "󰻭", fg = "yellow" },
	copied = { icon = "", fg = "green" },
	cut = { icon = "", fg = "red" },

	files = { icon = "", fg = "blue" },
	filtereds = { icon = "", fg = "magenta" },

	total = { icon = "󰮍", fg = "yellow" },
	success = { icon = "", fg = "green" },
	failed = { icon = "", fg = "red" },

	show_background = false,

	display_header_line = true,
	display_status_line = true,

	component_positions = { "header", "tab", "status" },

	header_line = {
		left = {
			section_a = {
				{ type = "line", name = "tabs" },
			},
			section_b = {},
			section_c = {},
		},
		right = {
			section_a = {
				{ type = "coloreds", custom = true, name = { { " 󰇥 ", "black" } } },
			},
			section_c = {
				{ type = "coloreds", custom = false, name = "count" },
			}
		}
	},

	status_line = {
		left = {
			section_a = {
				{ type = "string", name = "tab_mode" },
			},
			section_c = {
				{ type = "string", name = "hovered_path" },
			},
		},
		right = {
			section_a = {
				{ type = "string", name = "cursor_position" },
			},
			section_b = {
				{ type = "string", name = "hovered_size" },
			},
			section_c = {
				{ type = "coloreds", name = "permissions" },
			},
		},
	},
})
