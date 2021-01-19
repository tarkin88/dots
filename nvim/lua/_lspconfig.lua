local lsp = require "nvim_lsp"
local configs = require "nvim_lsp/configs"
local util = require "nvim_lsp/util"
local utils = require "utils"

local on_attach = function(client)
  require "diagnostic".on_attach(client)
  require "completion".on_attach(client)

  local opts = {noremap = true, silent = true}
  utils.map("n", "gD", "<Cmd>lua vim.lsp.buf.declaration()<CR>", opts)
  utils.map("n", "gd", "<Cmd>lua vim.lsp.buf.definition()<CR>", opts)
  utils.map("n", "ga", "<Cmd>lua vim.lsp.buf.code_action()<CR>", opts)
  utils.map("n", "K", "<Cmd>lua vim.lsp.buf.hover()<CR>", opts)
  utils.map("n", "gi", "<cmd>lua vim.lsp.buf.implementation()<CR>", opts)
  utils.map("n", "<leader>r", "<cmd>lua vim.lsp.buf.rename()<CR>", opts)
  utils.map("n", "gr", "<cmd>lua vim.lsp.buf.references()<CR>", opts)
  utils.map(
    "n",
    "<leader>ld",
    "<cmd>lua vim.lsp.util.show_line_diagnostics()<CR>",
    opts
  )
  utils.map("n", "[c", ":PrevDiagnosticCycle<CR>", opts)
  utils.map("n", "]c", ":NextDiagnosticCycle<CR>", opts)
end

local servers = {
  bashls = {},
  vimls = {},
  tsserver = {},
  jsonls = {},
  jedi_language_server = {
    cmd = { "~/.envs/neovim/bin/jedi-language-server" },
    filetypes = { "python" }
  },
  pyls = {
    cmd = { "~/.envs/neovim/bin/pyls" },
    filetypes = { "python" },
    configurationSources = {'flake8'},
    plugins = {
      autopep8 = {enabled = false},
      black = {enabled = false},
      flake8 = {enabled = flase},
      mccabe = {enabled = false},
      pycodestyle = {enabled = false, maxLineLength = 88},
      pyflakes = {enabled = false},
      yapf = {enabled = true}
    }
  },
  html = {
    filetypes = {"html"}
  },
  vuels = {},
  cssls = {},
}

for server, config in pairs(servers) do
  config.on_attach = on_attach
  lsp[server].setup(config)
end
