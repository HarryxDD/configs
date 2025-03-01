return {
  "nvimtools/none-ls.nvim",
  dependencies = {
    "nvimtools/none-ls-extras.nvim",
  },
  config = function()
    local null_ls = require("null-ls")
    null_ls.setup({
      sources = {
        null_ls.builtins.formatting.stylua,
        null_ls.builtins.formatting.prettier,
        null_ls.builtins.formatting.black,
        null_ls.builtins.formatting.isort,
        null_ls.builtins.completion.spell,
        -- null_ls.builtins.formatting.biome,
        -- null_ls.builtins.diagnostics.biome
        -- null_ls.builtins.diagnostics.eslint_d,
        -- require("none-ls.diagnostics.eslint_d"), -- requires none-ls-extras.nvim
      },
    })
  end,
}
