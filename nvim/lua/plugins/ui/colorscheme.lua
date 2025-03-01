return {
  {
    'scottmckendry/cyberdream.nvim',
    lazy = false,
    priority = 1000,
    config = function()
      require('cyberdream').setup {
        transparent = true,
        saturation = 0.77,
        italic_comments = true,
        borderless_telescope = false,
      }
      vim.cmd [[colorscheme cyberdream]]
    end,
  },
}
