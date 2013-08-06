syntax on
set nocompatible
set number
set showmatch
set hlsearch
set incsearch
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab
set ruler
set hidden
set wildmenu
set wildmode=list:longest
set ttyfast
set mousehide
set mouse=v
set encoding=utf-8
set fileencodings=utf-8,chinese,latin-1
set visualbell
set showmode
set title
set showcmd
set cursorline
set ignorecase
set smartcase
set t_Co=256
colorscheme molokai
"colorscheme Tomorrow-Night
set fillchars+=stl:\ ,stlnc:\
set laststatus=2
set foldenable
set foldmethod=manual
filetype plugin on
" create a undo file
set undodir=/home/jinyuan/.vim/tmp/undo
set undofile 
" python conventions
set wrap
set textwidth=79
set formatoptions=qrn1
set colorcolumn=85
" save if losing focus
au FocusLost * :wa
set clipboard=unnamed
set relativenumber

:iabbrev pyhead #!/usr/bin/env python <cr>#-*- coding: utf-8 -*- <cr><cr>import sys <cr>reload(sys) <cr>sys.setdefaultencoding('UTF-8')
:iabbrev pytodo <cr># TODO:<Esc>
" replace default leader key with ,
let mapleader = ","
" clear highlight color after search
noremap <leader><space> :noh<cr> 
" open window vertically
noremap <leader>v <C-w>v<C-w>l
" open window horizontally
noremap <leader>h <C-w>s<C-w>l
" maximize the window
noremap <leader>o <C-w>o
" map window jumping keys
noremap <C-h> <C-w>h
noremap <C-j> <C-w>j
noremap <C-k> <C-w>k
noremap <C-l> <C-w>l
" window size change keys
noremap <leader>- <C-w>-
noremap <leader>= <C-w>+
noremap <leader>[ <C-w><
noremap <leader>] <C-w>>

" Bundle-specific
map <F5> :NERDTreeToggle<CR>
" Gundo enabler
nnoremap <F4> :GundoToggle<CR>
nnoremap <silent> <F3> :YRShow<cr>
inoremap <silent> <F3> <ESC>:YRShow<cr>
let g:gundo_width = 40
let g:gundo_preview_height = 20
let g:gundo_right = 1
let g:gundo_preview_bottom = 1
" YCM
inoremap <silent> <F2> <ESC> :YcmCompleter GoToDefinitionElseDeclaration<cr>
noremap <F2> :YcmCompleter GoToDefinitionElseDeclaration<cr>
let g:ycm_complete_in_comments = 1
let g:ycm_add_preview_to_completeopt = 1
let g:ycm_autoclose_preview_window_after_completion = 1
" Airline statusline
let g:airline_theme='badwolf'
" Syntastic
let g:syntastic_python_checkers=['pyflakes']
" restore_view
set viewoptions=cursor,folds,slash,unix
" AutoPEP8
autocmd FileType python map <buffer> <F8> :call Autopep8()<CR>
" Powerline
"set guifont=PowerlineSymbols\ for\ Powerline
"let g:Powerline_symbols = 'fancy'
" CtrlP
noremap <F6> :CtrlPMixed<cr>
let g:ctrlp_working_path_mode = 'ra'
set wildignore+=*/tmp/*,*.so,*.swp,*.zip 
nnoremap <leader>. :CtrlPTag<cr>


filetype off                   " required!
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()
Bundle 'gmarik/vundle'
" My Bundles here:
Bundle 'scrooloose/nerdtree'
Bundle 'uguu-org/vim-matrix-screensaver'
Bundle 'vim-scripts/ZoomWin'
Bundle 'bling/vim-airline'
"Bundle 'Lokaltog/powerline'
Bundle 'tpope/vim-fugitive'
Bundle 'scrooloose/syntastic'
Bundle 'Valloric/YouCompleteMe'
Bundle 'sjl/gundo.vim'
Bundle 'vim-scripts/YankRing.vim'
Bundle 'vim-scripts/restore_view.vim'
Bundle 'tell-k/vim-autopep8'
Bundle 'Lokaltog/vim-easymotion'
Bundle 'kien/ctrlp.vim'

filetype plugin indent on     " required!

