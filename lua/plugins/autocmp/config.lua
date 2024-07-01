return function()
	local cmp = require("cmp")
	local ls = require("luasnip")
	local keys = require("custom_keys")

	cmp.setup({
		snippet = {
			-- Select the luasnip engine here. You can switch to another engine.
			expand = function(args)
				-- vim.fn["vsnip#anonymous"](args.body) -- For `vsnip` users.
				require("luasnip").lsp_expand(args.body) -- For `luasnip` users.
				-- require('snippy').expand_snippet(args.body) -- For `snippy` users.
				-- vim.fn["UltiSnips#Anon"](args.body) -- For `ultisnips` users.
				require("luasnip").config.set_config({
					history = true,
					updateevents = "TextChanged,TextChangedI",
				})
				require("luasnip").config.setup({ enable_autosnippets = true })
				require("luasnip-latex-snippets").setup()
				require("luasnip/loaders/from_vscode").lazy_load()
			end,
		},
		window = {
			completion = cmp.config.window.bordered({
				border = "rounded",
				winhighlight = "",
				minwidth = 60,
			}),
			documentation = cmp.config.window.bordered({
				border = "rounded",
				winhighlight = "",
			}),
		},
		formatting = {
			format = require("lspkind").cmp_format({
				mode = "symbol_text",
			}),
		},
		mapping = cmp.mapping.preset.insert({
			[keys.doc_up] = cmp.mapping.scroll_docs(-4),
			[keys.doc_down] = cmp.mapping.scroll_docs(4),
			["<C-S>"] = cmp.mapping.complete(),
			[keys.doc_cancel] = cmp.mapping.abort(),
			[keys.doc_cr] = cmp.mapping.confirm({ select = true }), -- Accept currently selected item. Set `select` to `false` to only confirm explicitly selected items.
			[keys.doc_next] = function(fallback)
				if cmp.visible() then
					cmp.select_next_item()
				else
					fallback()
				end
			end,
		}),
		sources = cmp.config.sources({
			{ name = "nvim_lsp" },
			{ name = "vsnip" },
		}, {
			{ name = "buffer" },
			{ name = "path" },
		}),
	})

	-- `/` cmdline setup.
	cmp.setup.cmdline("/", {
		mapping = cmp.mapping.preset.cmdline(),
		sources = {
			{ name = "buffer" },
		},
	})

	-- `:` cmdline setup.
	cmp.setup.cmdline(":", {
		mapping = cmp.mapping.preset.cmdline(),
		sources = cmp.config.sources({
			{ name = "path" },
		}, {
			{
				name = "cmdline",
				option = {
					ignore_cmds = { "Man", "!" },
				},
			},
		}),
	})

	-- If you want insert `(` after select function or method item
	local cmp_autopairs = require("nvim-autopairs.completion.cmp")
	cmp.event:on("confirm_done", cmp_autopairs.on_confirm_done())
end
