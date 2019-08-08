" Vundle Stuff
set nocompatible              " be iMproved, required
filetype off                  " required
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'ervandew/supertab'
Plugin 'scrooloose/syntastic'
Plugin 'scrooloose/nerdcommenter'
Plugin 'scrooloose/nerdtree'
Plugin 'tpope/vim-fugitive'
Plugin 'Chiel92/vim-autoformat'
Plugin 'oblitum/rainbow'
Plugin 'valloric/vim-operator-highlight'
Plugin 'yggdroot/indentline'
Plugin 'henrik/vim-indexed-search'
Plugin 'godlygeek/tabular'
Plugin 'ntpeters/vim-better-whitespace'
Plugin 'majutsushi/tagbar'
Plugin 'neomake/neomake'
Plugin 'derekwyatt/vim-scala'
Plugin 'wesQ3/vim-windowswap'
" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

" PLUGINS
" Supertab makes the tab key for autocomplete.
" Syntastic is a syntax checker. It runs on save.
" Nerd Commenter allows quick - and un-commenting. Use vn and vu.
" Nerd Tree is a file explorer opened with the :nt command.
" Fugitive is a git integration plugin that I use just to display the branch.
" VIM Autoformat is an autoformatter that uses astyle. Use ggg to format.
" Rainbow colors brackets. I use only 1 color.
" Operator Highlight changes the colors of operators.
" IndentLine shows whitespace indent characters

" SUPERTAB (no settings)
" SYNTASTIC (default reccommended configuration)
set statusline+=%#warningmsg#
set statusline+=%*
let g:syntastic_cpp_compiler = "g++"
let g:syntastic_cpp_compiler_options = "-std=c++11"
let g:syntastic_cpp_compiler_options = "-Isnappy/build"
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_java_javac_classpath = 'C:\Users\Kyle\cs61b\repo\cs61b-software\'
let g:syntastic_quiet_messages = {
    \ "regex": ['Cucumber::Undefined', 'ambiguous first argument'] }

inoremap {<CR> {}<ESC>i<CR><CR><ESC>kcc
au BufRead *.s let b:syntastic_mode="passive"

"NERD COMMENTER
vmap c ,cl
" use c to comment out the current line in visual mode
vmap u ,cu
" use u to uncomment the current line in visual mode
"NERDTree
"let NERDTreeQuitOnOpen=1
" makes the NERDTree close when a file is opened
let NERDTreeShowBookmarks=1
" turns on the display of bookmarks
let NERDTreeShowFiles=1
let NERDTreeShowHidden=1
" makes the NREDTree show files and hidden files
let NERDTreeShowLineNumbers=1
" makes the NERDTree show line numbers inside it
cnoremap nt<CR> NERDTree<CR>
" using :nt opens the tree
"LOOKUPFILE
cnoremap ff<CR> LookupFile<CR>
"FUGITIVE
set statusline+=%{fugitive#statusline()}\ 
" just using this plugin to show the current branch on the statusline
"VIM-AUTOFORMAT
let g:formatterpath = ['C:\Program Files (x86)\vim\vim74\bundle']
autocmd BufNewFile,BufRead *.java set formatprg=astyle\ -A1s4SM80m0pHyj
" sets the auto-formatter to astyle with a lot of options. See
" http://astyle.sourceforge.net/astyle.html for the details of the options.
nnoremap ggg gggqG<C-o><C-o>
" use ggg to auto-format.
nnoremap fff {gq}{=}
" use fff to auto-format a single function
nnoremap ff<CR> {V}k
" use ff (followed by c or u) to select current block (for commenting)
"RAINBOW
let g:rainbow_active = 1
" enable the plugin
let g:rainbow_ctermfgs = ['brown']
" set which colors will be used
"OPERATOR HIGHLIGHT
let g:ophigh_color = 'darkgreen'
" INDENTLINE
let g:indentLine_color_term = 'brown'
let g:indentLine_char = '|'
cnoremap lines<CR> IndentLinesToggle<CR>
" INDEXED SEARCH
let g:indexed_search_colors = 0
" TAGBAR
cnoremap tt<CR> TagbarToggle<CR>
" NEOMAKE
au BufWritePost *.scala Neomake! sbt


" COLORS
syntax enable
" turn syntax coloring on
colorscheme kyle
" set the color scheme
set showmatch
" highlights matching parentheses
hi ColorColumn ctermbg=darkred
" set the ruler color
cnoremap ruler<CR> set colorcolumn=81<CR>
cnoremap noruler<CR> set colorcolumn=<CR>
" toggle the ruler on or off


" TYPING
set nu
" line numbering
set tabstop=4
au BufNewFile,BufRead *.rb set tabstop=2
" length of a tab
set autoindent
" indent after return
set smartindent
" not sure if this does anything
set expandtab
" use spaces instead of tabs
set shiftwidth=4
au BufNewFile,BufRead *.rb set shiftwidth=2
" when using >> to indent, use indent size 4
set backspace=2
" allow backspacing over everything in insert mode


" MOUSE
set mouse=a
" mouse enabled in all modes
set mousehide
" hide mouse when typing
set ttymouse=xterm2


" SEARCHING
set ic
" ignore case in searches
set hls
" highlight searches
set is
" incremental search
cnoremap clc<CR> let @/ = ""<CR>
" use clc in command mode to clear the search
vnoremap // y/<C-R>"<CR>
" type // in visual mode to search for what is hilighted


" SIZING
" set lines=77 columns=186
" window size
set scrolloff=5
" keep 5 lines above/below cursor
set laststatus=2
"set lazyredraw
" redraw only when needed
set ttyfast
" redraws even faster


" KEY MAPPING

au BufNewFile,BufRead *.java cnoremap ww<CR> w<CR>:!cls && javac -g %<CR>
" automatically compile java files on :w
au BufNewFile,BufRead *.java cnoremap java<CR> !cls && java -ea %:r<CR>
"run current java file with java command

" use jk quickly instead of escape
inoremap jk <ESC>

" use qw for autocomplete
inoremap qw <C-N>

" type sout<TAB> for printlines
au BufNewFile,BufRead *.java inoremap sout<TAB> System.out.println();<ESC>hi
au BufNewFile,BufRead *.c inoremap sout<TAB> fprintf(stderr, "\n");<ESC>hhhhi
au BufNewFile,BufRead *.cc inoremap sout<TAB> fprintf(stderr, "\n");<ESC>hhhhi

"move between windows faster
nnoremap <C-k> <C-w>k
nnoremap <C-j> <C-w>j
nnoremap <C-h> <C-w>h
nnoremap <C-l> <C-w>l
inoremap <C-k> <ESC><C-w>k
inoremap <C-j> <ESC><C-w>j
"inoremap <C-h> <ESC><C-w>h
inoremap <C-l> <ESC><C-w>l

" get to ex mode faster
nnoremap ; :

" move along individual rows instead of lines in case of very long lines
nnoremap j gj
nnoremap k gk
nnoremap 0 g0
nnoremap ^ g^
nnoremap $ g$

" use gc to find all usages of a word (use to find call of a method or
" useages of a varable)
nnoremap gc g*

" centers the screen
nnoremap <space> zz
nnoremap n nzz
nnoremap N Nzz

let mapleader=","
" sets the leader key to be the comma
nnoremap <Leader>h :vertical resize +3<CR>
nnoremap <Leader>j :resize +3<CR>
nnoremap <Leader>k :resize -3<CR>
nnoremap <Leader>l :vertical resize -3<CR>

" make it easier to see loaded scripts
cnoremap scripts<CR> scriptnames<CR>

" allow for accidental capital letters when saving or quitting
cnoremap W<CR> w<CR>
cnoremap X<CR> x<CR>
cnoremap Q<CR> q<CR>
cnoremap W<CR> w<CR>


" FILES
set nocompatible
" do not be compatible with vi
filetype plugin indent on
" not sure
set noswapfile
" do not create swap files
set nobackup
" do not create backup files
set encoding=utf-8
" set encoding type
set statusline+=%f
" display file name in status line
set statusline+=\ \ \ \ line\ %l\ of\ %L\ [%p%%]
" displa location in file
" au VimEnter * :split | :vsplit | :vsplit | :wincmd j | :vsplit | vsplit
" start with 5 extra buffers open
" au VimEnter * :start
" start in insert mode
cnoremap ss6<CR> :split<CR>:vsplit<CR>:vsplit<CR><C-w>j:vsplit<CR>:vsplit<CR><C-w>k
" use ss6 to open 5 extra buffers
cnoremap ss3<CR> :vsplit<CR>:vsplit<CR>
" use ss3 to open 2 extra buffers
cnoremap ss23<CR> :split<CR>:vsplit<CR><C-w>j:vsplit<CR>:vsplit<CR><C-w>k
" use ss23 to open 4 extra buffers in a 2-3 formation
cnoremap ss32<CR> :split<CR>:vsplit<CR>:vsplit<CR><C-w>j:vsplit<CR><C-w>k
" use ss32 to open 4 extra buffers in a 3-2 formation
cnoremap ss4<CR> :split<CR>:vsplit<CR><C-w>j:vsplit<CR><C-w>k
" use ss4 to open 3 extra buffers
set gdefault
" makes the %s replace feature go through the whole file
cnoremap small<CR> :set columns=100<CR>:set lines=50<CR>
" make the editor small
cnoremap big<CR> :set columns=286<CR>:set lines=77<CR>
" make the editor big
nnoremap <S-Left> :set columns-=10<CR>
nnoremap <S-Right> :set columns+=10<CR>
nnoremap <S-Up> :set lines-=5<CR>
nnoremap <S-Down> :set lines+=5<CR>
" resize the window
set backspace=indent,eol,start
" Make the backspace key work

"Make the current line hilighted if in command mode
au InsertEnter * set cul
au InsertLeave * set nocul
au BufRead * set nocul
hi CursorLine cterm=NONE ctermbg=blue

" Use <C-c> in visual mode to copy
vnoremap <C-c> "+y
inoremap <C-v> <ESC>"+p

" Make bash aliases work with external commands
"set shellcmdflag=-ic
"set shell=bash\ --login
let $BASH_ENV = "~/.bash_aliases"

cnoremap rd redraw!
" make it so that :rd redraws the window

"WINDOW SWAP
let g:windowswap_map_keys = 0 "prevent default bindings
nnoremap <silent> <Leader>w :call WindowSwap#EasyWindowSwap()<CR>
