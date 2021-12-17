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
"Plugin 'itchyny/lightline.vim'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'

" Indentation
Plugin 'yggdroot/indentline'

" Surround (mapped on cs)
Plugin 'tpope/vim-surround'

" Wakatime
Plugin 'wakatime/vim-wakatime'

" Show registers content (mapped on ")
Plugin 'junegunn/vim-peekaboo'

" Debugger (need to learn)
" git clone https://github.com/puremourning/vimspector ~/.vim/pack/vimspector/opt/vimspector

" Minimap (need cargo)
"Plug 'wfxr/minimap.vim'

" Snippets
Plugin 'SirVer/ultisnips'
Plugin 'honza/vim-snippets'

" Wiki
Plugin 'vimwiki/vimwiki'

call vundle#end()
filetype plugin indent on

runtime! plugin/sensible.vim

" Termdebug
packadd termdebug
let g:termdebug_popup=0
let g:termdebug_wide=0

packadd! vimspector
let g:vimspector_enable_mappings='HUMAN'
let g:vimspector_install_gadgets = [ 'debugpy' ]
let g:vimspector_base_dir=expand( '$HOME/.vim/vimspector-config' )

" Theming
syntax on
set number
let g:airline_theme='wombat'

set textwidth=80
set colorcolumn=80

set list
set listchars=tab:>-,eol:$

set t_Co=256
let &t_ut=''

augroup project
  autocmd!
  autocmd BufRead,BufNewFile *.h set filetype=c.doxygen
  autocmd BufRead,BufNewFile c.snippets set filetype=c
  autocmd BufRead,BufNewFile python.snippets set filetype=python
augroup END


" Command completion
set wildmenu
set wildmode=longest:full,full


" Buffers
set modifiable
set hidden


" Search
set incsearch
set ignorecase
set smartcase


" Tab
set expandtab
set smarttab
set autoindent
set smartindent
set ts=4 sw=4

let g:indentLine_fileType = ['yaml', 'md', 'json']
autocmd FileType yaml setlocal ts=2 sw=2
autocmd FileType md setlocal ts=2 sw=2
autocmd FileType json setlocal ts=2 sw=2


" Encoding
set encoding=utf-8 fileencodings=


" Bindings
let mapleader = "\<Space>"

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
map <CR> :!ls<cr>

map <C-h> :tabp<cr>
map <C-l> :tabn<cr>
map <C-j> :Texplore<cr>
 
" Fix a bug with nerdtree
map <C-m> <cr>

" Ctags
map <Leader>gd :tab split<CR>:exec("tag ".expand("<cword>"))<CR>
map <Leader>gf :edit <cfile><cr>
map <Leader>ct :!./scripts/ctags.sh<cr>

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
set updatetime=250
let g:gitgutter_terminal_reports_focus=0
let g:gitgutter_realtime = 1
let g:gitgutter_eager = 1

set laststatus=2
set ttimeoutlen=50
set noshowmode

let g:python3_host_prog="/usr/bin/python3"
let g:ycm_key_list_select_completion = ['']
let g:ycm_key_list_previous_completion = ['']
let g:ycm_key_list_stop_completion = ['<C-M>']

let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<tab>"
let g:UltiSnipsJumpBackwardTrigger="<s-tab>"


" Color theme
colorscheme ocean
