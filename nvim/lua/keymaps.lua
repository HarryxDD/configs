local keymap = vim.keymap
local opts = { noremap = true, silent = true }

-- Clear highlights on search when pressing <Esc> in normal mode
keymap.set('n', '<Esc>', ':nohlsearch<CR>')

-- Split windows
keymap.set('n', 'ss', ':vsplit<Return>', opts)
keymap.set('n', 'sv', ':split<Return>', opts)

-- Tabs
keymap.set('n', 'te', ':tabedit', opts)
keymap.set('n', '<tab>', ':tabnext<Return>', opts)
keymap.set('n', '<s-tab>', ':tabprev<Return>', opts)
keymap.set('n', '<leader><tab>d', ':tabclose<Return>', opts)

-- IncRename
vim.keymap.set('n', '<leader>cr', function()
  return ':IncRename ' .. vim.fn.expand '<cword>'
end, { desc = 'LSP Rename', expr = true })

-- Show notifications history
keymap.set('n', '<leader>n', function()
  Snacks.notifier.show_history()
end, { desc = 'Notifications' })

-- Buffer
keymap.set('n', '<S-h>', '<cmd>bprevious<cr>', { desc = 'Prev buffer' })
keymap.set('n', '<S-l>', '<cmd>bnext<cr>', { desc = 'Next buffer' })
keymap.set('n', '[b', '<cmd>bprevious<cr>', { desc = 'Prev buffer' })
keymap.set('n', ']b', '<cmd>bnext<cr>', { desc = 'Next buffer' })
keymap.set('n', '<leader>bd', function()
  Snacks.bufdelete()
end, { desc = 'Delete Buffer' })
keymap.set('n', '<leader>bo', function()
  Snacks.bufdelete.other()
end, { desc = 'Delete Other Buffers' })
keymap.set(
  'n',
  '<leader>bD',
  '<cmd>:bd<cr>',
  { desc = 'Delete Buffer and Window' }
)

-- Better indenting
keymap.set('v', '<', '<gv')
keymap.set('v', '>', '>gv')

-- Pane navigation
vim.keymap.set('n', '<C-h>', '<C-w>h', { noremap = true, silent = true }) -- Move left
vim.keymap.set('n', '<C-l>', '<C-w>l', { noremap = true, silent = true }) -- Move right
vim.keymap.set('n', '<C-k>', '<C-w>k', { noremap = true, silent = true }) -- Move up
vim.keymap.set('n', '<C-j>', '<C-w>j', { noremap = true, silent = true }) -- Move down

-- Format
vim.keymap.set("n", "<leader>gf", vim.lsp.buf.format, {})

-- Yank into system clipboard
vim.keymap.set({ "n", "v" }, "<leader>y", '"+y') -- yank motion
vim.keymap.set({ "n", "v" }, "<leader>Y", '"+Y') -- yank line

-- Delete into system clipboard
vim.keymap.set({ "n", "v" }, "<leader>d", '"+d') -- delete motion
vim.keymap.set({ "n", "v" }, "<leader>D", '"+D') -- delete line

-- Paste from system clipboard
vim.keymap.set("n", "<leader>p", '"+p') -- paste after cursor
vim.keymap.set("n", "<leader>P", '"+P') -- paste before cursor

