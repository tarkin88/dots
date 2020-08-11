" auto-install vim-plug
if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  "autocmd VimEnter * PlugInstall
  autocmd VimEnter * PlugInstall | source $MYVIMRC
endif

call plug#begin('~/.config/nvim/autoload/plugged')

" ---------------------------------------
"            General stuff
" ---------------------------------------
  Plug 'machakann/vim-highlightedyank'
  source $HOME/.config/nvim/themes/highlightyank.vim
  Plug 'itchyny/lightline.vim'
  source $HOME/.config/nvim/themes/lightline.vim
  Plug 'kristijanhusak/vim-carbon-now-sh'
  source $HOME/.config/nvim/configs/carbon.vim
  Plug 'ntpeters/vim-better-whitespace'
  source $HOME/.config/nvim/configs/betterwhitespace.vim
  Plug 'editorconfig/editorconfig-vim'
  Plug 'maximbaz/lightline-ale'

  " ---------------------------------------
  "            Code Quality
  " ---------------------------------------
  Plug 'dense-analysis/ale'
  source $HOME/.config/nvim/configs/ale.vim
  Plug 'neoclide/coc.nvim', {'branch': 'release'}
  source $HOME/.config/nvim/configs/coc.vim
  Plug 'kkoomen/vim-doge'
  source $HOME/.config/nvim/configs/doge.vim
  Plug 'tpope/vim-commentary'
  source $HOME/.config/nvim/configs/commentary.vim
  Plug 'honza/vim-snippets'
  Plug 'Shougo/neosnippet.vim'
  Plug 'Shougo/neosnippet-snippets'
  Plug 'sheerun/vim-polyglot'

  " ---------------------------------------
  "            Colors
  " ---------------------------------------
  Plug 'numirias/semshi', {'do': ':UpdateRemotePlugins'}
  Plug 'ghifarit53/tokyonight-vim'

  " ---------------------------------------
  "            Git
  " ---------------------------------------
  Plug 'APZelos/blamer.nvim'
  source $HOME/.config/nvim/configs/blamer.vim
  Plug 'airblade/vim-gitgutter'
  source $HOME/.config/nvim/configs/gitgutter.vim

  " ---------------------------------------
  "            Navigation
  " ---------------------------------------
  Plug 'airblade/vim-rooter'
  source $HOME/.config/nvim/configs/rooter.vim
  Plug 'ludovicchabant/vim-gutentags'
  source $HOME/.config/nvim/configs/gutentags.vim
  Plug 'mbbill/undotree', { 'on': [ 'UndotreeToggle' ] }
  source $HOME/.config/nvim/configs/undotree.vim
  Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --no-bash' } " FZF from inside Vim
  Plug 'junegunn/fzf.vim', {
            \ 'on': [
                \ 'Rg',
                \ 'FZF',
                \ 'Files',
                \ 'GitFiles',
                \ 'Buffers',
                \ 'Commits',
                \ 'BCommits',
                \ 'Tags',
                \ 'BTags',
                \ 'History',
                \ 'Lines',
                \ 'BLines',
                \ 'Marks'
            \ ] }
  source $HOME/.config/nvim/configs/fzf.vim
  Plug 'junegunn/goyo.vim'
  source $HOME/.config/nvim/configs/goyo.vim
  Plug 'junegunn/limelight.vim'
  source $HOME/.config/nvim/configs/limelight.vim
  Plug 'ryanoasis/vim-devicons'
  Plug 'liuchengxu/vista.vim'
  Plug 'ap/vim-buftabline'


call plug#end()

" Automatically install missing plugins on startup
autocmd VimEnter *
  \  if len(filter(values(g:plugs), '!isdirectory(v:val.dir)'))
  \|   PlugInstall --sync | q
  \| endif
