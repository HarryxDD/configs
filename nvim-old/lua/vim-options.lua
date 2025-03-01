vim.cmd("set expandtab")
vim.cmd("set tabstop=2")
vim.cmd("set softtabstop=2")
vim.cmd("set shiftwidth=2")
vim.cmd("set nu")

-- Make sure to setup `mapleader` and `maplocalleader` before
-- loading lazy.nvim so that mappings are correct.
-- This is also a good place to setup other settings (vim.opt)
vim.g.mapleader = " "
vim.g.maplocalleader = "\\"

-- Pane navigation
vim.keymap.set('n', '<C-h>', '<C-w>h', { noremap = true, silent = true }) -- Move left
vim.keymap.set('n', '<C-l>', '<C-w>l', { noremap = true, silent = true }) -- Move right
vim.keymap.set('n', '<C-k>', '<C-w>k', { noremap = true, silent = true }) -- Move up
vim.keymap.set('n', '<C-j>', '<C-w>j', { noremap = true, silent = true }) -- Move down

-- Format
vim.keymap.set("n", "<leader>gf", vim.lsp.buf.format, {})

-- LSP config
vim.keymap.set("n", "K", vim.lsp.buf.hover, {})
vim.keymap.set("n", "gd", vim.lsp.buf.definition, {})
vim.keymap.set('n', 'gD', vim.lsp.buf.declaration, {})
vim.keymap.set('n', 'gr', vim.lsp.buf.references, {})
vim.keymap.set('n', 'gi', vim.lsp.buf.implementation, {})
vim.keymap.set('n', '<leader>rn', vim.lsp.buf.rename, {})
vim.keymap.set({ "n", "v" }, "<leader>ca", vim.lsp.buf.code_action, {})

-- Git Config
vim.keymap.set("n", "<leader>gp", ":Gitsigns preview_hunk<CR>", {})
vim.keymap.set("n", "<leader>gt", ":Gitsigns toggle_current_line_blame<CR>", {})

-- Yank into system clipboard
vim.keymap.set({ "n", "v" }, "<leader>y", '"+y') -- yank motion
vim.keymap.set({ "n", "v" }, "<leader>Y", '"+Y') -- yank line

-- Delete into system clipboard
vim.keymap.set({ "n", "v" }, "<leader>d", '"+d') -- delete motion
vim.keymap.set({ "n", "v" }, "<leader>D", '"+D') -- delete line

-- Paste from system clipboard
vim.keymap.set("n", "<leader>p", '"+p') -- paste after cursor
vim.keymap.set("n", "<leader>P", '"+P') -- paste before cursor

