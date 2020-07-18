call plug#begin('~/.vim/plugged')

" NERDTree
Plug 'preservim/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
Plug 'airblade/vim-gitgutter'
Plug 'scrooloose/nerdcommenter'

" Icon
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'ryanoasis/vim-devicons'

" COC
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" TS
Plug 'HerringtonDarkholme/yats.vim' " TS Syntax

" Fuzzy search
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'

" tmux
Plug 'christoomey/vim-tmux-navigator'


call plug#end()


" Suppress error
let g:loaded_clipboard_provider = 1

" ====================================================================================================
" Editor Config
" ====================================================================================================
" Turn on code Syntax
:syntax on
" Turn off *.swp
set noswapfile
" Turn on line number
set relativenumber
set number
"
filetype plugin indent on
" tab width (1 tab == 2 spaces)
set tabstop=2
set shiftwidth=2
" Use spaces instead of tabs
set expandtab
" Be smart when using tabs ;)
set smarttab
" Set history to 500
set history=500
" Set utf8 as standard encoding and en_US as the standard language
set encoding=utf-8

" ====================================================================================================
" Font
" ====================================================================================================
let g:airline_powerline_fonts = 1

" ====================================================================================================
" COC
" ====================================================================================================
let g:coc_global_extensions = [
  \ 'coc-snippets',
  \ 'coc-pairs',
  \ 'coc-tsserver',
  \ 'coc-eslint', 
  \ 'coc-prettier', 
  \ 'coc-json',
  \ ]

" ====================================================================================================
" NERDTree
" ====================================================================================================
" Ctrl + n to open NERDTree
map <C-n> :NERDTreeToggle<CR>
" close vim if the only window left open is a NERDTree
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

let g:NERDTreeGitStatusWithFlags = 1
let g:NERDTreeIgnore = ['^node_modules$']

let g:NERDTreeColorMapCustom = {
      \"Staged"    : "#0ee375",  
      \"Modified"  : "#d9bf91",  
      \"Renamed"   : "#51C9FC",  
      \"Untracked" : "#FCE77C",  
      \"Unmerged"  : "#FC51E6",  
      \"Dirty"     : "#FFBD61",  
      \"Clean"     : "#87939A",   
      \"Ignored"   : "#808080"}      



" ====================================================================================================
" Own method
" ====================================================================================================


