

set backspace=indent,eol,start
set showtabline=0
set guifont=Fira_Code_Medium:h10.5:cANSI:qDRAFT
set guicursor+=n-v-c:blinkon0

set signcolumn=yes

set guioptions-=m  "menu bar
set guioptions-=T  "toolbar
set guioptions-=r  "scrollbar
set guioptions-=L

syntax on
set noswapfile
set ruler
set showmatch
set number
set nocompatible
set nowrap
set encoding=utf-8
set laststatus=2 
		 
	 
"set autoindent
set virtualedit+=onemore
set nocompatible              " be iMproved, required

filetype plugin indent on
set tabstop=4
set shiftwidth=4
set expandtab



inoremap <C-g> <C-h>
inoremap <C-Space> <left>
inoremap <C-l> <right>
inoremap <C-k> <down>
inoremap <C-j> <up>

 map j <up>
 map k <down>
 map h <left>
 map l <right>

map <C-/> :s/^/\/\// <CR>
map <C-\> :s/^\/\// <CR>

noremap<nowait> d b
noremap<nowait>f e
noremap<nowait> ee dd 
noremap<nowait> e d

call plug#begin('~/.vim/plugged')
Plug 'morhetz/gruvbox'
Plug 'mattn/emmet-vim'
Plug 'terryma/vim-multiple-cursors'
Plug 'scrooloose/nerdtree'


Plug 'joshdick/onedark.vim'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'sbdchd/neoformat'
Plug 'mhartington/oceanic-next'
Plug 'ayu-theme/ayu-vim'
Plug 'vim-syntastic/syntastic'
call plug#end()

imap <expr><tab> emmet#expandAbbrIntelligent("\<tab>")


" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin('~/.vim/bundle')

Plugin 'frazrepo/vim-rainbow'
 Plugin 'MarcWeber/vim-addon-mw-utils'
  Plugin 'tomtom/tlib_vim'
  Plugin 'garbas/vim-snipmate'
Plugin 'honza/vim-snippets'
Plugin 'itchyny/lightline.vim'

" All of your Plugins must be added before the following line
call vundle#end()            " required


"===========================================================






let g:auto_save=0



autocmd FileType css setl @iskeyword+=-

autocmd FileType scss setl @iskeyword+=@-@

let g:user_emmet_install_global =0 
autocmd FileType html,css EmmetInstall

imap <tab>  <Plug>snipMateTrigger

filetype plugin indent on
set tabstop=4
set shiftwidth=4
set expandtab


"nnoremap <C-f> :NERDTree<CR>
nnoremap <S-n> :Neoformat<CR> 
nnoremap <C-t> :NERDTreeToggle<CR>
"set t_Co=256
"set bg=dark
"colorscheme onedark
""autocmd CursorHold * silent call CocActionAsync('highlight')
"set termguicolors
autocmd FileType tex let b:coc_pairs = [["$", "$"]]

au FileType c,cpp,objc,objcpp call rainbow#load()
let g:rainbow_active = 1


let g:snipMate = { 'snippet_version' : 1 }

"let g:snipMate = get(g:, 'snipMate', {}) " Allow for vimrc re-sourcing
"let g:snipMate.scope_aliases = {}
"let g:snipMate.scope_aliases['ruby'] = 'ruby,rails'




" Theme
" syntax enable
"" for vim 7
" set t_Co=256
"
"" for vim 8
" if (has("termguicolors"))
"  set termguicolors
" endif
"
"colorscheme OceanicNext
"
set termguicolors     " enable true colors support
let ayucolor="light"  " for light version of theme
let ayucolor="mirage" " for mirage version of theme
let ayucolor="dark"   " for dark version of theme
colorscheme ayu




set guicursor=i:ver1
set guicursor+=a:blinkon0
autocmd InsertEnter * setlocal nocursorline
autocmd VimEnter,InsertLeave * setlocal cursorline

highlight Cursor guifg=red guibg=orange
highlight iCursor guifg=orange guibg=yellow


let g:syntastic_javascript_checkers = ['jshint']
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_check_on_open = 1