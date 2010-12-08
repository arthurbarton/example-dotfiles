" use vim settings, not vi. must be first as it changes the rest of the
" options
set nocompatible

if has('gui_running')
    menu 20.451 &Edit.Choose\ Color\ Theme :SCROLL<CR>
    menu Plugin.Zoom\ Window :ZoomWin<CR> 
    menu Plugin.Browse\ Undo\ Branches :UB<CR> 
    menu Plugin.Create\ Color\ Scheme :ColorSchemeEditor<CR>
    menu Plugin.Color\ Picker.Hex\ Color\ Picker :PickHEX<CR>
    menu Plugin.Color\ Picker.HSL\ Color\ Picker :PickHSL<CR>
    menu Plugin.Color\ Picker.RGB\ Color\ Picker :PickRGB<CR>
    menu Plugin.Color\ Picker.Raw\ Color\ Picker :PickRAW<CR>
    menu Plugin.Toggle\ Easy\ Accents :EZA<CR> 
    set showtabline=1
    set guioptions+=b
    "set guioptions-=T
    set anti gfn=Bitstream\ Vera\ Sans\ Mono\ 12
    colorscheme lucius
    set cursorline cursorcolumn " Show cursor position visually, like BBEdit
    else
    colorscheme elflord
endif 

au BufWinLeave ?* mkview           " Load folds and such
au BufWinEnter ?* silent loadview  "  - so I can navigate confusing code better.

filetype plugin indent on
syntax on

" Options
set number nowrap nobackup visualbell backspace=2 " Options I always, always use
set showmatch matchpairs+=<:> "Show matching parens & brackets. 
" set mouse=a mousemodel=popup" In many terminal emulators the mouse works just fine, thus, enable it.
set autoindent smartindent " Indent-related options
set softtabstop=2 shiftwidth=2 expandtab
set enc=utf-8 "Needed for gtk
set foldcolumn=1
set nohlsearch ignorecase incsearch smartcase " Search-related options
set showcmd showmode    " display incomplete commands
set lazyredraw "faster macros
"set scrolloff=3 "more context
set laststatus=2 shortmess=a statusline=%<%04n\ %t%(\ %m%r%y[%{&ff}][%{&fenc}]\ \ %{mode()}%)\ %a%=\ col\ %v\ \ line\ %l/%L\ %p%%
set tabpagemax=100 "balls
set title "in mrxvt or xterm, let the terminal have the title be the same as it would be in gvim.
set ul=10 "undo more than that is a problem
set viminfo='25,<10000,n~/.viminfo directory=~/.vim/swp
"set virtualedit=all
set wcm=<Tab> wildmenu wildmode=list:full

" mine
set modelines=0

" Save when losing focus "
au FocusLost * :wa

" tabs
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab

" bs over everything
set backspace=indened,eol,start

" show matching braces
set showmatch

" case sentitivity searches
set ignorecase
set smartcase
" highlight searches
set hlsearch
" search as you type
set incsearch

" Use pathogen to easily modify the runtime path to include all
" plugins under the ~/.vim/bundle directory
call pathogen#helptags()
call pathogen#runtime_append_all_bundles()

" lots of history
set history=1000
set undolevels=100

" change tmux title to vim
set title

"7.3 not in lucid yet :(
"set relativenumber
"set undofile

" set filetyps on
filetype on
filetype plugin on
filetype indent on

" f2 turns paste on and off
set pastetoggle=<F2>

" use visual bell instead of beeping
set vb

" syntax highlighting
set bg=dark
syntax on

" autoindent
autocmd FileType perl set autoindent|set smartindent

" 4 space tabs
autocmd FileType perl set tabstop=4|set shiftwidth=4|set expandtab|set softtabstop=4

" show line numbers
autocmd FileType perl set number

" make tab in v mode ident code
vmap <tab> >gv
vmap <s-tab> <gv

" make tab in normal mode ident code
nmap <tab> I<tab><esc>
nmap <s-tab> ^i<bs><esc>

" paste mode - this will avoid unexpected effects when you
" cut or copy some text from one window and paste it in Vim.
set pastetoggle=<F11>

let perl_extended_vars = 1

"set number
