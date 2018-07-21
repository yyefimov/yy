set nocompatible              " be iMproved
filetype off                  " required!

set encoding=utf-8

" Vundle settings
set rtp+=~/.vim/bundle/Vundle.vim
set rtp+=~/.vim/ctags/
call vundle#begin()

" set term=xterm  
set t_Co=256  
" let &t_AB='\e[48;5;%dm'
" let &t_AF='\e[38;5;%dm'

set background=dark
set laststatus=2
set number
set so=30
set nowrapscan
set synmaxcol=180
set nowrap
set showmatch
set list
set listchars=tab:>.,trail:.,extends:#,nbsp:.
set history=1000         " remember more commands and search history
set undolevels=1000      " use many muchos levels of undo
set wildignore=*.swp,*.bak,*.pyc,*.class
set title                " change the terminal's title
set noerrorbells visualbell t_vb= " no bells no flash
if has('autocmd')
  autocmd GUIEnter * set visualbell t_vb=
endif
set directory=~/.vim/tmp/swap,.
set backupdir=.,~/.vim/tmp/backup,.
set noerrorbells         " don't beep
set nobackup
set noswapfile
set lazyredraw
set hidden
set shellslash
set grepprg=grep\ -nH\ $*

let mapleader="\<Space>"

" mappings for vimrc file
nmap <silent> <leader>ev :e $MYVIMRC<CR>
nmap <silent> <leader>sv :so $MYVIMRC<CR>


" VsVim backspace
set backspace=indent,eol,start
" latex
let g:tex_flavor='latex'
let g:Tex_UsePython=0

" Solarized settings
let g:solarized_termcolors=16
" force transparent background in gui if used
let g:solarized_termtrans=1
" special chars visibility
let g:solarized_visibility='normal'
let g:solarized_contrast='normal'
" toggle background
" call togglebg#map("<F5>")

" airline settings
" let g:airline_powerline_fonts=1
let g:airline#extensions#tabline#left_alt_sep = '>'
" Enable the list of buffers
let g:airline#extensions#tabline#enabled = 1
" Show just the filename
let g:airline#extensions#tabline#fnamemod = ':t'
set ttimeoutlen=50
set noshowmode

" EasyMotions
"
" JK motions: Line motions
map <Leader>j <Plug>(easymotion-j)
map <Leader>k <Plug>(easymotion-k)

" Need one more keystroke, but on average, it may be more comfortable.
nmap <Leader>ss <Plug>(easymotion-s2)
" map  / <Plug>(easymotion-sn)
" omap / <Plug>(easymotion-tn)
map <Leader>sn <Plug>(easymotion-sn)

" ctrp-funky extenssion
let g:ctrlp_extensions = ['funky']
nnoremap <Leader>fu :CtrlPFunky<Cr>
" narrow the list down with a word under cursor
nnoremap <Leader>fU :execute 'CtrlPFunky ' . expand('<cword>')<Cr>

" numbers settings
" exclude numbers from
let g:numbers_exclude = ['unite', 'tagbar', 'startify', 'gundo', 'vimshell', 'w3m']
" nnoremap <F3> :NumbersToggle<CR>
" nnoremap <F4> :NumbersOnOff<CR>

" let Vundle manage Vundle
" required! 
Plugin 'VundleVim/Vundle.vim'
"
" My bundles here:

" original repos on GitHub
Plugin 'OmniSharp/omnisharp-vim'
Plugin 'tpope/vim-repeat'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-jdaddy'
Plugin 'Lokaltog/vim-easymotion'
Plugin 'bling/vim-airline'
Plugin 'altercation/vim-colors-solarized'
Plugin 'veloce/vim-aldmeris'
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-dispatch'
Plugin 'tpope/vim-unimpaired'
Plugin 'tpope/vim-sensible'
Plugin 'tpope/vim-classpath'
Plugin 'tpope/vim-obsession'
Plugin 'tpope/vim-vinegar'
Plugin 'tpope/vim-commentary'
Plugin 'xolox/vim-notes'
Plugin 'xolox/vim-misc'
Plugin 'myusuf3/numbers.vim'
Plugin 'kien/ctrlp.vim'
Plugin 'tacahiroy/ctrlp-funky'
Plugin 'vim-scripts/dbext.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'Xuyuanp/nerdtree-git-plugin'
" Plugin 'scrooloose/nerdcommenter'
Plugin 'Yggdroot/indentLine'
Plugin 'moll/vim-node'
Plugin 'MarcWeber/vim-addon-mw-utils'
Plugin 'tomtom/tlib_vim'
Plugin 'garbas/vim-snipmate'
Plugin 'honza/vim-snippets'
Plugin 'ervandew/supertab'
Plugin 'jeetsukumaran/vim-buffergator'
Plugin 'blueyed/vim-diminactive'
Plugin 'PProvost/vim-ps1'
" Plugin 'scrooloose/syntastic'
Plugin 'vim-latex/vim-latex'
Plugin 'vim-syntastic/syntastic'
Plugin 'leafgarland/typescript-vim'
Plugin 'Quramy/vim-js-pretty-template'
Plugin 'jason0x43/vim-js-indent'
Plugin 'Quramy/vim-dtsm'
Plugin 'mhartington/vim-typings'
Plugin 'bdauria/angular-cli.vim'
Plugin 'fatih/vim-go'
Plugin 'Valloric/YouCompleteMe'
Plugin 'Quramy/tsuquyomi'
Plugin 'mattn/emmet-vim'
Plugin 'alvan/vim-closetag'
Plugin 'Shougo/unite.vim'
" Plugin 'mnpk/vim-jira-complete'
" Plugin 'vim-scripts/LustyExplorer'
" Plugin 'mileszs/ack.vim'
" Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Plugin 'tpope/vim-rails.git'
" vim-scripts repos
" Plugin 'L9'
" Plugin 'FuzzyFinder'
" non-GitHub repos
" Plugin 'wincent/Command-T'
" Git repos on your local machine (i.e. when working on your own plugin)
" Plugin 'file://c:/git_src/sqlcmd'
" Plugin 'file://c:/vim/vim-ycm-733de48-windows-x64'

" Plugin 'file:///Users/gmarik/path/to/plugin'
" All of your Plugins must be added before the following line
call vundle#end()

filetype plugin indent on     " required!

colorscheme solarized
syntax enable

autocmd FileType javascript setlocal expandtab sw=2 sts=2
autocmd FileType html setlocal expandtab sw=2 sts=2
autocmd FileType html set omnifunc=htmlcomplete#CompleteTags
autocmd FileType sql setlocal expandtab sw=2 sts=2
autocmd FileType cs setlocal expandtab sw=4 sts=4
autocmd FileType java setlocal expandtab sw=2 sts=2
autocmd FileType ps1 setlocal expandtab sw=2 sts=2
autocmd FileType xml setlocal expandtab sw=2 sts=2

if has('gui_running')
  set guioptions-=T  " no toolbar
  set lines=60 columns=108 linespace=0
  if has('gui_win32')
    set guifont=Inconsolata:b:h11:cANSI
  else
    set guifont=Inconsolata\ Bold\ 11
  endif
endif
if has("gui_running")
" GUI is running or is about to start.
" Maximize gvim window.
  set lines=999 columns=999 linespace=0
else
" This is console Vim.
"  syntax off
"  if exists("+lines")
"    set lines=50
"  endif
"  if exists("+columns")
"    set columns=100
"  endif
endif

" syntastic settings
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_cs_checkers = ['code_checker']

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

" typescript plugin
let g:typescript_compiler_binary = 'tsc'
let g:typescript_compiler_options = ''
autocmd QuickFixCmdPost [^l]* nested cwindow
autocmd QuickFixCmdPost    l* nested lwindow

" movements between buffers
map <leader>a <C-W>h
map <leader>s <C-W>j
map <leader>d <C-W>k
map <leader>f <C-W>l

" macros
let g:join_comma='0Jr,'
let g:table_create_trim='0:.s/^\s\+//e
f Dj0'
let g:sur_quote_comma="I'A',j0"
let g:nuget_pkg_reinstall='df"fiinstall-package f"2s -f=2s f"Dj0'

" OmniSharp
let g:OmniSharp_server_path = 'omnisharp.http-win-x64/OmniSharp.exe'
let g:OmniSharp_selector_ui = 'unite'  " Use unite.vim
let g:OmniSharp_start_server = 0
