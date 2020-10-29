" auto-install vim-plug
if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  "autocmd VimEnter * PlugInstall
  autocmd VimEnter * PlugInstall | source $MYVIMRC
endif
call plug#begin('~/.config/nvim/autoload/plugged')

" ---------------------------------------
"            Colors
" ---------------------------------------
  " Plug 'numirias/semshi', {'do': ':UpdateRemotePlugins'}
  Plug 'sainnhe/sonokai'
" ---------------------------------------
"            General stuff
" ---------------------------------------
  Plug 'editorconfig/editorconfig-vim'
  Plug 'haya14busa/incsearch.vim'
  Plug 'kristijanhusak/vim-carbon-now-sh'
  Plug 'machakann/vim-highlightedyank'
  Plug 'vim-airline/vim-airline'
  Plug 'wfxr/minimap.vim'
  " Plug 'ntpeters/vim-better-whitespace'

  " ---------------------------------------
  "            Code Quality
  " ---------------------------------------
  Plug 'Shougo/neosnippet-snippets'
  Plug 'nvim-treesitter/nvim-treesitter'
  Plug 'Shougo/neosnippet.vim'
  Plug 'honza/vim-snippets'
  Plug 'tpope/vim-commentary'
  Plug 'neovim/nvim-lspconfig'
  Plug 'nvim-lua/completion-nvim'
  Plug 'nvim-lua/diagnostic-nvim'
  Plug 'mhartington/formatter.nvim'

  " ---------------------------------------
  "            Navigation
  " ---------------------------------------
  Plug 'airblade/vim-rooter'
  Plug 'ap/vim-buftabline'
  Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --no-bash' }
  Plug 'junegunn/fzf.vim'
  Plug 'ludovicchabant/vim-gutentags'
  Plug 'mbbill/undotree', { 'on': [ 'UndotreeToggle' ] }
  Plug 'ryanoasis/vim-devicons'
call plug#end()

" Automatically install missing plugins on startup
autocmd VimEnter *
  \  if len(filter(values(g:plugs), '!isdirectory(v:val.dir)'))
  \|   PlugInstall --sync | q
  \| endif
