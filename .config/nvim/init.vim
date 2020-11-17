" Need Configuration
set nocompatible " Be improved, required
filetype off     " required

" Basic Configuartion
set noswapfile " No create cache file
set nu rnu " Set number on line && Jump to number line
set nowrap
set smartcase
set hlsearch " Highlight while searching word
set incsearch 
set noerrorbells " Disable sound
set tabstop=2
set softtabstop=2
set shiftwidth=2
set expandtab
set smartindent
set encoding=UTF-8
set laststatus=2 " Show status always
set ruler
set guifont=* " include all the fonts on your PC
set scrolloff=9
set backspace=indent,eol,start
set autoindent
set fileformat=unix

" Setting key leader
let mapleader = " "

" Installation Plugin
call plug#begin('~/.config/nvim/plugged')

Plug 'joshdick/onedark.vim'             " Theme one dark
Plug 'jiangmiao/auto-pairs'             " Auto close [], {}, ()
Plug 'scrooloose/nerdtree'              " Show dirs file
Plug 'preservim/nerdcommenter'          " Comment code
" Plug 'norcalli/nvim-colorizer.lua'      " colors css
Plug 'vim-airline/vim-airline'          " Theme Status
Plug 'vim-airline/vim-airline-themes'   " Themes Status Custom
Plug 'sirver/ultisnips'                 " Customize Snippet
Plug 'tpope/vim-fugitive'

call plug#end()

" Setting theme for coding
syntax on
colorscheme onedark

" Setting theme for airline plugin
let g:airline_theme = 'onedark'
let g:onedark_termcolors=256

" Setting Tabs Airline
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'
let g:airline_powerline_fonts = 1

" let g:airline#extensions#tabline#fnamemode=':t'

" Setting Shortcuts keyboard switch to the tab
nmap <leader>1 :bp<CR>
nmap <leader>2 :bn<CR>
nmap <C-w> :bd<CR>

" Setting highlight Color In CSS
" lua require 'colorizer'.setup()

" Setting NERDCommenter 
nmap <C-/> <Plug>NERDCommenterToggle
vmap <C-/> <Plug>NERDCommenterToggle<CR>

" Setting NERDTree
let NERDTreeQuitOnOpen=1
let g:NERDTreeMinimalUI=1
nmap <F2> :NERDTreeToggle<CR>

map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l

" Setting Ultisnips
" If you want to enable just remove double quote
" let g:UltiSnipsSnippetDirectories=[$HOME.'/.vim/ultisnips']
" let g:UltiSnipsExpandTrigger="<tab>"
" let g:UltiSnipsJumpForwardTrigger="<tab>"
" let g:UltiSnipsJumpBackwardTrigger="<s-tab>"

" For include moudle
" Example
" source $HOME/.config/dirs/modules/plugin.vim
