"Core
set encoding=UTF-8
set termguicolors
set nocompatible				"Turn off the compability with Vi
filetype plugin indent on		"Detect filetype
syntax on					    "Syntax highlight

"Interface Display
set number
set relativenumber
"set cursorline					"Highlight cursorline
set showmatch					"Highlight matching bracket
set scrolloff=5					"Keep border
set laststatus=2				"Keep status bar
set showmode

"Screens
set splitright
set splitbelow

"Indentation
set tabstop=4					"Display tab with spaces
set softtabstop=4				"Insert space when pressing tab
set shiftwidth=4                "Sets indentation level to 4 whitespaces
set expandtab					"Convert every tabs to space automatically
set autoindent
set smartindent

"Search
set hlsearch					"Highlight search result
set noincsearch					"Display result until finish typing
set ignorecase
set smartcase					"Switch to case sensitive when uppercase letter detected in search

"Others
set mouse=a
"set clipboard=unnamedplus
set hidden 					    "Allow you to store unsave file into buffer
set autoread					"Auto reload while file's edited external
set backup                      "Back up the save file with postfix '~'
set patchmode=.orig             "Save the first version of the file
set backupext=.bak              "Name the backup file with the specific postfix

"Command completion menu
set wildmenu
set wildoptions=pum,tagfile

"Plugins
call plug#begin()
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

Plug 'dense-analysis/ale'

Plug 'Shougo/deoplete.nvim'
Plug 'roxma/nvim-yarp'
Plug 'roxma/vim-hug-neovim-rpc'
call plug#end()

"Themes
set termguicolors
set background=dark
colorscheme apprentice
"colorscheme fogbell
"colorscheme github_dimmed
"colorscheme base16-grayscale-dark
"colorscheme monochrome

"Enable Deoplete and set up keybindings
let g:deoplete#enable_at_startup = 1

let g:ale_linters = {
    \'python': ['pylsp'],
    \'c': ['clangd'],
    \'cpp': ['clangd'],
\}

let g:ale_fixers = {
   \'python': ['black'],
   \'c': ['clang-format'],
   \'cpp': ['clang-format'],
   \'*': ['remove_trailing_lines', 'trim_whitespace'],
\}

"let g:ale_fix_on_save = 1 "Fix file on save

"Keymaps
nnoremap <F2> :ALERename<Enter>
nnoremap <C-K><C-D> :ALEGoToDefinition<Enter>
nnoremap <C-K><C-I> :ALEGoToDefinition<Enter>  
nnoremap <C-K><C-H> :ALEHover<Enter>  
