set nocompatible              " be iMproved
filetype off                  " required!

" Vundle settings
" set rtp+=~/.vim
" set rtp+=~/.vimfiles
set rtp+=~/.vim/bundle/vundle/
set rtp+=~/.vim/ctags/
call vundle#rc()

" set term=xterm  
set t_Co=256  
let &t_AB="\e[48;5;%dm"  
let &t_AF="\e[38;5;%dm"

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


" mappings for vimrc file
nmap <silent> <leader>ev :e $MYVIMRC<CR>
nmap <silent> <leader>sv :so $MYVIMRC<CR>


" VsVim backspace
set backspace=indent,eol,start

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
let g:airline#extensions#tabline#left_alt_sep = '|'
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
Bundle 'gmarik/vundle'
"
" My bundles here:

" original repos on GitHub
Bundle 'tpope/vim-repeat'
Bundle 'tpope/vim-fugitive'
Bundle 'Lokaltog/vim-easymotion'
Bundle 'bling/vim-airline'
Bundle 'altercation/vim-colors-solarized'
Bundle 'tpope/vim-surround'
Bundle 'tpope/vim-dispatch'
Bundle 'tpope/vim-unimpaired'
Bundle 'tpope/vim-sensible'
Bundle 'tpope/vim-classpath'
Bundle 'tpope/vim-obsession'
Bundle 'tpope/vim-vinegar'
Bundle 'tpope/vim-commentary'
" Bundle 'xolox/vim-notes'
Bundle 'xolox/vim-misc'
Bundle 'myusuf3/numbers.vim'
Bundle 'kien/ctrlp.vim'
Bundle 'tacahiroy/ctrlp-funky'
Bundle 'vim-scripts/dbext.vim'
" Bundle 'scrooloose/nerdtree'
" Bundle 'scrooloose/nerdcommenter'
Bundle 'Yggdroot/indentLine'
Bundle 'moll/vim-node'
Bundle "MarcWeber/vim-addon-mw-utils"
Bundle "tomtom/tlib_vim"
Bundle 'garbas/vim-snipmate'
Bundle "honza/vim-snippets"
Bundle "ervandew/supertab"
Bundle "jeetsukumaran/vim-buffergator"
Bundle "blueyed/vim-diminactive"
Bundle "PProvost/vim-ps1"
" Bundle 'mnpk/vim-jira-complete'
" Bundle 'vim-scripts/LustyExplorer'
" Bundle 'mileszs/ack.vim'
" Bundle 'rstacruz/sparkup', {'rtp': 'vim/'}
" Bundle 'tpope/vim-rails.git'
" vim-scripts repos
" Bundle 'L9'
" Bundle 'FuzzyFinder'
" non-GitHub repos
" Bundle 'wincent/Command-T'
" Git repos on your local machine (i.e. when working on your own plugin)
Bundle 'file://c:/git_src/sqlcmd'
" Bundle 'file://c:/vim/vim-ycm-733de48-windows-x64'

" Bundle 'file:///Users/gmarik/path/to/plugin'

filetype plugin indent on     " required!

colorscheme solarized
syntax enable

autocmd FileType javascript setlocal expandtab sw=2 sts=2
autocmd FileType html setlocal expandtab sw=2 sts=2
autocmd FileType sql setlocal expandtab sw=2 sts=2
autocmd FileType cs setlocal expandtab sw=4 sts=4
autocmd FileType java setlocal expandtab sw=4 sts=4
autocmd FileType ps1 setlocal expandtab sw=2 sts=2
autocmd FileType xml setlocal expandtab sw=2 sts=2

if has("gui_running")
" GUI is running or is about to start.
" Maximize gvim window.
  set lines=999 columns=999
else
" This is console Vim.
  syntax off
  if exists("+lines")
    set lines=50
  endif
  if exists("+columns")
    set columns=100
  endif
endif

""""""""""""""""""""
" DB configurations
""""""""""""""""""""
" let g:dbext_default_profile_d11='type=SQLSRV:user=user:passwd=pwd:srvname=server:host=host'

""""""""""""""""""""
" Notes
" """"""""""""""""""
let g:notes_directories = ['h:/docs/', 'h:/docs/']
let g:notes_suffix = '.txt'
let g:notes_word_boundaries = 1

" """""""""""""""""""""
" ctags
" """""""""""""""""""""
set tags+=C:/Users/yefimovy/ctags/java.ctags

" my sql cmd to execute current file using sqlcmd
" let g:sqlcmd_command = 'sqlcmd.exe -S server -d db -U user -P pwd -i '
" command! SqlProj so c:/git_src/SQL/.vim.proj | CtrlP

" QA
command! ADSqlCmdT execute "!sqlcmd.exe -S server -d db -U user -P pwd " . bufname("%")

"Staging
command! RSqlCmdS execute "!sqlcmd.exe -S server -d db -U user -P pwd " . bufname("%")

" Development
command! RSqlCmdD execute "!sqlcmd.exe -S server -d db -E -i " . bufname("%")

" Production
command! RSqlCmdP execute "!sqlcmd.exe -S server -d db -E -i " . bufname("%")

" let g:jiracomplete_url = 'http://issues/here/'
" let g:jiracomplete_username = 'yefimovy'
" let b:jiracomplete_auth = $JIRA_PASS
:cd c:\git_src

" movements between buffers
map <leader>a <C-W>h
map <leader>s <C-W>j
map <leader>d <C-W>k
map <leader>f <C-W>l

" macros
let g:join_comma='0Jr,'
let g:table_create_trim='0:.s/^\s\+//ef Dj0'
let g:sur_quote_comma="I'A',j0"
let g:nuget_pkg_reinstall='df"fiinstall-package f"2s -f=2s f"Dj0'

