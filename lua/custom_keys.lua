--
-- You can edit the default settings of the shortcut keys here
--
return {
	-- The default '<leader>' is the space.
	leader = " ",


	-- Document Ti 文档提示
	doc_down = "<C-f>",
	doc_up = "<C-b>",
	doc_cr = "<CR>",
	doc_next = "<Tab>",
	doc_cancel = "<C-e>",

	-- Use the shortcut to switch/jump window.
	jump_left_window = "<C-h>",
	jump_right_window = "<C-l>",
	jump_up_window = "<C-k>",
	jump_down_window = "<C-j>",

	-- View other usage of the plugin: https://github.com/akinsho/bufferline.nvim
	-- Use the shortcut to pick a buffer tab.
	pick_tab = "<leader>tt",
	-- 左右移动标签页
	move_tab_left = "<A-h>",
	move_tab_right = "<A-l>",
	-- 关闭当前标签页
	delete_tab_now = "<A-D>",

	-- View other usage of the plugin: https://github.com/nvim-neo-tree/neo-tree.nvim
	-- Use the shortcut to open or close file explorer.
	file_explorer = "<A-m>",
	-- Use the shortcut to open or close git status on a float window.
	git_status = "<F8>",

	-- View other usage of the plugin: https://github.com/stevearc/aerial.nvim
	-- Use the shortcut to open or close the outline, it need to call the lsp server.
	outline = "<F7>",

	-- View other usage of the plugin: https://github.com/akinsho/toggleterm.nvim
	-- Use the shortcut to open or close the terminal.
	terminal_float = "<A-u>", -- open terminal in a float window
	terminal_bottom = "<A-b>", -- open terminal at the bottom

	-- View other usage of the plugin: https://github.com/Shatur/neovim-session-manager
	-- Use the shortcut to switch a session.
	switch_session = "<leader>ss",


	-- View other usage of the plugin: https://github.com/nvim-telescope/telescope.nvim
	-- Use the shortcut to find, search files and find buffers.
	find_files = "<leader>ff",
	live_grep = "<leader>gg",
	search_cursor = "<leader>cc",
	find_buffer = "<leader>bb",
	-- Use the to close telescope window. <C-c> is the default setting, can't edit it here.
	-- close_telescope  = "<C-c>",

	-- View other usage of the plugin: https://github.com/sindrets/diffview.nvim
	-- Use the shortcut to open 'git diff'.
	diff_open = "<leader>df",
	-- Use the shortcut to close 'git diff'.
	diff_close = "<leader>dc",

	-- View other usage of the plugin: https://github.com/mrjones2014/smart-splits.nvim
	-- Use the shortcut to resize the window, <control + alt + hjkl>
	resize_left = "<C-A-h>",
	resize_down = "<C-A-j>",
	resize_up = "<C-A-k>",
	resize_right = "<C-A-l>",

	-- View other usage of the plugin: https://github.com/neovim/nvim-lspconfig
	-- Goto
	goto_definition = "gd",
	goto_references = "gr",
	goto_declaration = "gD",
	goto_impl = "gi",
	-- goto_back           = "<C-o>",
	-- Use the shortcut to rename the code symbols.
	lsp_rename = "<leader>re",
	-- Use the shortcut to format your codes.
	format = "<leader>ft",

	-- 上下移动四行
	move_4j = "<A-j>",
	move_4k = "<A-k>",


	-- quit and save 
	quit_all = "Q",
	write_quit_all = "WQ",
	quit = "q",
	write_quit = "wq",
	save = "<leader>w",

	-- Esc
	esc = "<>"

}
