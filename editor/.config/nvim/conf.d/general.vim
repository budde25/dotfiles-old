" General settings

" Default in neovim, not vim
set encoding=utf-8

" Color settings
set termguicolors
let base16colorspace=256
colorscheme base16-gruvbox-dark-hard " Base16

" search
set incsearch
set smartcase
set ignorecase
set gdefault

" Sane splits
set splitright
set splitbelow

set backspace = 2

" Prevent accidental writes to buffers that shouldn't be edited
autocmd BufRead *.orig set readonly
autocmd BufRead *.pacnew set readonly

autocmd! BufNewFile,BufRead *.vs,*.fs set ft=glsl

" Jump to last edit position on opening file
if has("autocmd")
  " https://stackoverflow.com/questions/31449496/vim-ignore-specifc-file-in-autocommand
  au BufReadPost * if expand('%:p') !~# '\m/\.git/' && line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
endif

" Editor
filetype plugin indent on
syntax enable
set hidden
set nowrap
set nojoinspaces
set noshowmode

" Tabs
set autoindent
set expandtab
set tabstop=8
set smartindent
set shiftwidth=4

"Gui
set guioptions-=T " Removes the toolbar
set vb t_vb= " No beeping
set ttyfast " Vim only, default neovim
set lazyredraw " Buffer screen updates
set relativenumber " Relative line numbers
set number " Absolute on current line
set mouse=a " Enable mouse support
set colorcolumn=80 " Colored line at char 80
set laststatus=2 " Aloways show status line
set ruler " Show line and char
set showcmd " Show in progess commands
set shortmess+=c
" Diff
set diffopt+=iwhite " Ignore whitespace
set diffopt+=algorithm:patience
set diffopt+=indent-heuristic

" Show hidden characters
set listchars=nbsp:¬,extends:»,precedes:«,trail:•

