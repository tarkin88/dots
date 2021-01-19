local map = require("utils").map
local api = vim.api

local eslint = {
  eslint = function()
    return {
      exe = "eslint",
      args = {"--stdin-filepath", api.nvim_buf_get_name(0)},
      stdin = true
    }
  end
}

require("format").setup()
  -- {
  --   javascript = eslint,
  --   javascriptreact = eslint,
  --   typescript = eslint,
  --   typescriptreact = eslint,
  --   json = eslint,
  --   css = eslint,
  --   html = eslint,
  --   vue = eslint,
  -- }
-- )

-- vim.api.nvim_command('autocmd BufWrite * :Format')
map("n", ",f", ":Format<CR>", {silent = true})
