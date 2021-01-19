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
  Plug 'ghifarit53/daycula-vim' , {'branch' : 'main'}
  " Plug 'sainnhe/forest-night'
  " Plug 'sainnhe/sonokai'
  " Plug 'sainnhe/edge'
" ---------------------------------------
"            General stuff
" ---------------------------------------
  Plug 'easymotion/vim-easymotion'
  Plug 'editorconfig/editorconfig-vim'
  Plug 'kristijanhusak/vim-carbon-now-sh'
  Plug 'vim-airline/vim-airline'
  Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() }, 'for': ['markdown', 'vim-plug']}

  " ---------------------------------------
  "            Code Quality
  " ---------------------------------------
  Plug 'Shougo/neosnippet-snippets'
  Plug 'Shougo/neosnippet.vim'
  Plug 'honza/vim-snippets'
  Plug 'neoclide/coc.nvim', {'branch': 'release'}
  Plug 'sheerun/vim-polyglot'
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
  Plug 'ludovicchabant/vim-gutentags'
  Plug 'ryanoasis/vim-devicons'
  Plug 'kkoomen/vim-doge'


call plug#end()

" Automatically install missing plugins on startup
autocmd VimEnter *
  \  if len(filter(values(g:plugs), '!isdirectory(v:val.dir)'))
  \|   PlugInstall --sync | q
  \| endif
