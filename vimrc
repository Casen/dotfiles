set nocompatible               " be iMproved
filetype off                   " required!

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle
" required! 
Bundle 'gmarik/vundle'

" My Bundles here:
"
" original repos on github
Bundle 'tpope/vim-fugitive'
Bundle 'tpope/vim-surround'
Bundle 'tpope/vim-repeat'
Bundle 'scrooloose/nerdtree'
Bundle 'honza/snipmate-snippets'
Bundle 'Lokaltog/vim-easymotion'
Bundle 'kien/ctrlp.vim'
Bundle 'mileszs/ack.vim'
Bundle 'flazz/vim-colorschemes'
Bundle 'digitaltoad/vim-jade'
Bundle 'groenewege/vim-less'
Bundle 'garbas/vim-snipmate'
Bundle 'MarcWeber/vim-addon-mw-utils'
Bundle 'tomtom/tlib_vim'
Bundle 'kchmck/vim-coffee-script'
Bundle 'godlygeek/csapprox'
Bundle 'Lokaltog/powerline'
" vim-scripts repos
" non github repos

filetype plugin indent on     " required!
"
" Brief help
" :BundleList          - list configured bundles
" :BundleInstall(!)    - install(update) bundles
" :BundleSearch(!) foo - search(or refresh cache first) for foo
" :BundleClean(!)      - confirm(or auto-approve) removal of unused bundles
"
" see :h vundle for more details or wiki for FAQ
" NOTE: comments after Bundle command are not allowed

syntax on

" Defaults and global settings
set enc=UTF-8             " <encoding>   Set the encoding
set nowrap                " <nowrap>     Don't wrap lines
set wmnu                  " <wildmenu>   Show tab completion when in menu
set wim=longest:full,full " <wildmode>   Complete full option.
set wig+=*.o,.git         " <wildignore> Files to ignore when autocompleting
set history=100           " <history>    History backlog. Default is 20
set guitablabel=%t        " <guitablabel>Set the tab name to the file name

" Preferred spacing and shifting options
set sw=2   " <shiftwidth> Number of spaces per tab for auto indent
set sr     " <shiftround> Drop next line to previous shiftwidth
set ts=2   " <tabstop>    Spaces per tab
set et     " <expandtab>  In insert mode, use # of spaces to insert tab.
set sta    " <smarttab>   I think this helps with dropping a line
set ai     " <autoindent> Read name

" Searching in a file
set hls        " <hlsearch>   Highlight search strings
set incsearch  " <incsearch>  Highlight as you type your search
set ignorecase " <ignorecase> Ignore case when searching
set scs        " <smartcase>  Don't ignore case when capitals are present

" Movement control and visual pleasantries

" Jump to next empty line below
map <c-j> /^$<Cr>\|:noh<Cr>

" Jump to next empty line above
map <c-k> ?^$<Cr>\|:noh<Cr>

" Capitalize word under cursor
nmap <c-c> m`b~``

set cul        " <cursorline>  Highlight the current line
set nu         " <number>      Show line numbers in gutter
set nuw=2      " <numberwidth> Default width of gutter
set sm         " <showmatch>   Show matching brackets and stuff
set sc         " <showcmd>     Show command in the last line of the screen
set vb t_vb=   " <visualbell>  Turns default to on.
set ve=block   " <virtualedit> Allows for selecting empty spaces.
set list       " <list>        Turn list on and set characters below
set lcs=nbsp:¬,eol:ϟ,tab:--,extends:»,precedes:«,trail:•
" set ww=h,l,<,>,[,] " allow h/l/left/right to cross line boundaries

" Globals, overrides and traditional fixes
set ru                         " <runtime> Load in other files
set bsk=/tmp/*,/private/tmp/*  " <backupskip> Dont make swp files here
set nojs                       " <nojoinspaces> Dont auto-insert two spaces
set backspace=indent,eol,start " Fix backspace to play with other lines.
fixdel                         " Remove added backspace characters
filetype on                    " filetype plugin indent on

" -- Code folding :`(
" set fdm=indent  " <foldmethod>   Type of folding to use
" set fdc=2       " <foldcolumn>   Width of side column
" set fdn=3       " <foldnextmax>  Max number of nesting folds
" set fml=2       " <foldminlines> Min number of lines for a fold to be built
" set fdl=2       " <foldlevel>    Level of folds to close

" -- Color scheme generator --
" Colors live in ~/.vim/colors/ -- http://bytefluent.com/vivify/
set t_Co=256
colorscheme jellybeans

"make the lightning bolts darker
highlight NonText ctermfg=234

let g:ctrlp_working_path_mode='a' " Make sure ctrlp always searches from the project root
let g:ctrlp_custom_ignore = {
  \ 'dir':  '\v[\/]\.(git|hg|svn)$|build|tmp|node_modules'
  \ }

nmap <silent> <c-n> :NERDTreeToggle<CR>

" -- Key Maps --
" Type 'jk' to exit insert mode
:imap jk <Esc>
