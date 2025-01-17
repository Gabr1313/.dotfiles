return {
	"folke/flash.nvim",
	event = "VeryLazy",
	opts = {
		modes = {
			-- search = { enabled = true },
			char = {
				jump_labels = true,
				multi_line = false, -- use `s` instead
				char_actions = function(_)
					return {
						[";"] = "next",
						[","] = "prev",
					}
				end,
			},
		},
	},
	keys = {
		{ "s",     mode = { "n", "x", "o" }, function() require("flash").jump() end,              desc = "Flash" },
		{ "S",     mode = { "n", "x", "o" }, function() require("flash").treesitter() end,        desc = "Flash Treesitter" },
		{ "r",     mode = { "o" },           function() require("flash").remote() end,            desc = "Remote Flash" },
		{ "R",     mode = { "o", "x" },      function() require("flash").treesitter_search() end, desc = "Remote Flash Treesitter" },
		{ "<c-s>", mode = { "c" },           function() require("flash").toggle() end,            desc = "Toggle Flash Search" },
	},
}
