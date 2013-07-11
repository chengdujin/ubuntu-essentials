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
set laststatus=2
set foldenable
set foldmethod=marker
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

" replace default leader key with ,
let mapleader = ","
" clear highlight color after search
nnoremap <leader><space> :noh<cr> 
" open window vertically
nnoremap <leader>v <C-w>v<C-w>l
" open window horizontally
nnoremap <leader>h <C-w>h<C-w>l
" maximize the window
nnoremap <leader>o <C-w>o
" map window jumping keys
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l
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

filetype off                   " required!
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()
Bundle 'gmarik/vundle'
" My Bundles here:
"Bundle 'Lokaltog/vim-easymotion'
Bundle 'scrooloose/nerdtree'
Bundle 'uguu-org/vim-matrix-screensaver'
Bundle 'vim-scripts/ZoomWin'
Bundle 'bling/vim-airline'
Bundle 'tpope/vim-fugitive'
Bundle 'scrooloose/syntastic'
Bundle 'Valloric/YouCompleteMe'
Bundle 'sjl/gundo.vim'
Bundle 'vim-scripts/YankRing.vim'
" non github repos
"Bundle 'git://git.wincent.com/command-t.git'
"
filetype plugin indent on     " required!
" :BundleList          - list configured bundles
" :BundleInstall(!)    - install(update) bundles
" :BundleSearch(!) foo - search(or refresh cache first) for foo
" :BundleClean(!)      - confirm(or auto-approve) removal of unused bundles

let g:airline_theme='badwolf'
let g:syntastic_python_checkers=['pyflakes']
