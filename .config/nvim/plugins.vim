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
  Plug 'numirias/semshi', {'do': ':UpdateRemotePlugins'}
  Plug 'sainnhe/forest-night'
  Plug 'sainnhe/sonokai'

  " Plug 'Rigellute/rigel'
  " Plug 'franbach/miramare'

  " Plug 'ghifarit53/tokyonight-vim'
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
  " ---------------------------------------
  "            Code Quality
  " ---------------------------------------
  Plug 'Shougo/neosnippet-snippets'
  Plug 'Shougo/neosnippet.vim'
  " Plug 'dense-analysis/ale'
  Plug 'honza/vim-snippets'
  Plug 'kkoomen/vim-doge'
  Plug 'neoclide/coc.nvim', {'branch': 'release'}
  Plug 'sheerun/vim-polyglot'
  Plug 'tmhedberg/SimpylFold'
  Plug 'tpope/vim-commentary'
  " ---------------------------------------
  "            Git
  " ---------------------------------------
  Plug 'airblade/vim-gitgutter'
  Plug 'tpope/vim-fugitive'
  " ---------------------------------------
  "            Navigation
  " ---------------------------------------
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
