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
  Plug 'sainnhe/forest-night'
  Plug 'sainnhe/sonokai'
" ---------------------------------------
"            General stuff
" ---------------------------------------
  Plug 'easymotion/vim-easymotion'
  Plug 'editorconfig/editorconfig-vim'
  Plug 'haya14busa/incsearch.vim'
  Plug 'kristijanhusak/vim-carbon-now-sh'
  Plug 'machakann/vim-highlightedyank'
  Plug 'ntpeters/vim-better-whitespace'
  Plug 'wellle/targets.vim'
  Plug 'vim-airline/vim-airline'
  Plug 'unblevable/quick-scope'
  Plug 'JamshedVesuna/vim-markdown-preview'
  Plug 'Kachyz/vim-gitmoji'
  " ---------------------------------------
  "            Code Quality
  " ---------------------------------------
  Plug 'Shougo/neosnippet-snippets'
  Plug 'nvim-treesitter/nvim-treesitter'
  Plug 'Shougo/neosnippet.vim'
  Plug 'honza/vim-snippets'
  Plug 'kkoomen/vim-doge', { 'do': { -> doge#install() } }
  Plug 'neoclide/coc.nvim', {'branch': 'release'}
  Plug 'tmhedberg/SimpylFold'
  Plug 'tpope/vim-commentary'
  " ---------------------------------------
  "            Navigation
  " ---------------------------------------
  Plug 'preservim/nerdtree' |
            \ Plug 'Xuyuanp/nerdtree-git-plugin'
  Plug 'airblade/vim-rooter'
  Plug 'ap/vim-buftabline'
  Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --no-bash' }
  Plug 'junegunn/fzf.vim'
  Plug 'liuchengxu/vista.vim'
  Plug 'ludovicchabant/vim-gutentags'
  Plug 'mbbill/undotree', { 'on': [ 'UndotreeToggle' ] }
  Plug 'ryanoasis/vim-devicons'
call plug#end()

" Automatically install missing plugins on startup
autocmd VimEnter *
  \  if len(filter(values(g:plugs), '!isdirectory(v:val.dir)'))
  \|   PlugInstall --sync | q
  \| endif
