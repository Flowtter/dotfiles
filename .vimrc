set rtp+=~/.vim/bundle/Vundle.vim

call vundle#begin()

" Vundle
Plugin 'VundleVim/Vundle.vim'

" Formating
Plugin 'rhysd/vim-clang-format'
Plugin 'Chiel92/vim-autoformat'

" Tabnine
Plugin 'tabnine/YouCompleteMe'

" LSP
Plugin 'prabirshrestha/vim-lsp'
Plugin 'mattn/vim-lsp-settings'
Plugin 'prabirshrestha/asyncomplete.vim'
Plugin 'prabirshrestha/asyncomplete-lsp.vim'

" Windows management (mapped on F#)
Plugin 'szw/vim-maximizer'

" Better bookmark
Plugin 'MattesGroeger/vim-bookmarks'

" Git
Plugin 'airblade/vim-gitgutter'

" Nerd tree
Plugin 'preservim/nerdtree'
Plugin 'preservim/nerdcommenter'
Plugin 'ryanoasis/vim-devicons'
Plugin 'tiagofumo/vim-nerdtree-syntax-highlight'

" Line
Plugin 'itchyny/lightline.vim'

" Indentation
Plugin 'yggdroot/indentline'

" Surround (mapped on cs)
Plugin 'tpope/vim-surround'

" Wakatime
Plugin 'wakatime/vim-wakatime'

" Show registers content (mapped on ")
Plugin 'junegunn/vim-peekaboo'

" Abreviations (need to learn)
"Plug 'SirVer/ultisnips'

" Debugger (need to learn)
"Plugin 'puremourning/vimspector'

" Minimap (need cargo)
"Plug 'wfxr/minimap.vim'

call vundle#end()
filetype plugin indent on

runtime! plugin/sensible.vim

" Termdebug
packadd termdebug
let g:termdebug_popup=0
let g:termdebug_wide=0

" Theming
syntax on
set number

set textwidth=80
set colorcolumn=80

set list
set listchars=tab:>-

set t_Co=256
let &t_ut=''

augroup project
  autocmd!
  autocmd BufRead,BufNewFile *.h set filetype=c.doxygen
augroup END


" Command completion
set wildmenu
set wildmode=longest:full,full


" Search
set hlsearch
set incsearch
set ignorecase
set smartcase


" Tab
set expandtab
set smarttab
set autoindent
set smartindent
set ts=4 sw=4

autocmd FileType yaml setlocal ts=2 sts=2 sw=2
autocmd FileType md setlocal ts=2 sts=2 sw=2
autocmd FileType json setlocal ts=2 sts=2 sw=2


" Encoding
set encoding=utf-8 fileencodings=


" Bindings
map <up> <nop>
map <down> <nop>
map <left> <nop>
map <right> <nop>

imap <up> <nop>
imap <down> <nop>
imap <left> <nop>
imap <right> <nop>

" unbind lazy window movement
map <C-w><C-w> <nop>

" unbind nerdtree on enter
map <cr> <nop>

map <C-h> :tabp<cr>
map <C-l> :tabn<cr>
map <C-m> :Texplore<cr>


" Format
map <C-k> :ClangFormat<cr>
autocmd FileType python map <C-k> :Autoformat<cr>


" Window management
au VimResized * if &equalalways | wincmd = | endif
set scrolloff=5


" Don't redraw when executing macros
set lazyredraw


" Auto load file when it has been changed outside of vim
set autoread


" Avoid mistypes
command W w


" Enable spell checking
"set spelllang=en_us ",fr
"set spell


" Use shift+k to open man page under the cursor
set keywordprg=:Man


" Trash files
set noswapfile


" Zshrc alias exposed to vim (.zshenv)
set shell=zsh\ -l

" Plugins
filetype plugin on
set updatetime=250
let g:gitgutter_terminal_reports_focus=0
let g:gitgutter_realtime = 1
let g:gitgutter_eager = 1

set laststatus=2
set ttimeoutlen=50
set noshowmode

let g:python3_host_prog="/usr/bin/python3"

" Color theme
colorscheme ocean
