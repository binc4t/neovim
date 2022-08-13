" basic
"F2 to switch paste mode
set pastetoggle=<F2>
"语法高亮
syntax on
"行号
set nu
"搜索高亮
set hlsearch
"制表符
filetype plugin indent on
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab
"缩进设置为与上一行相等
set autoindent
"括号匹配
set sm
" 设置默认进行大小写不敏感查找
set ignorecase
" 如果有一个大写字母，则切换到大小写敏感查找
set smartcase
" 自动保存
set autowrite


" alias
cnoreabbrev Rg Rg! 
cnoreabbrev Files Files! 

" plugin
call plug#begin()

Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
" Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
Plug 'sainnhe/sonokai'
Plug 'neovim/nvim-lspconfig'
Plug 'ojroques/nvim-lspfuzzy'
Plug 'windwp/nvim-autopairs'
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}

Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'hrsh7th/cmp-buffer'
Plug 'hrsh7th/cmp-path'
Plug 'hrsh7th/cmp-cmdline'
Plug 'hrsh7th/nvim-cmp'

call plug#end()

" vim-go
" Go syntax highlighting
" let g:go_highlight_types = 1
" let g:go_highlight_fields = 1
" let g:go_highlight_functions = 1
" let g:go_highlight_function_calls = 1
" let g:go_highlight_operators = 1
" let g:go_highlight_extra_types = 1
" let g:go_highlight_function_parameters = 1

" Auto formatting and importing
" let g:go_fmt_autosave = 1
" let g:go_fmt_command = "goimports"

" Status line types/signatures
" let g:go_auto_type_info = 1

" fold
set foldmethod=syntax
set foldlevelstart=99

" colors
colorscheme sonokai

" fzf
" let g:fzf_layout = { 'window': 'enew' }
let g:fzf_layout = { 'down': '30%' }
" let g:fzf_colors =
"     \ { 'fg':      ['fg', 'Normal'],
"       \ 'bg':      ['bg', 'Normal'],
"       \ 'hl':      ['fg', 'Comment'],
"       \ 'fg+':     ['fg', 'CursorLine', 'CursorColumn', 'Normal'],
"       \ 'bg+':     ['bg', 'CursorLine', 'CursorColumn'],
"       \ 'hl+':     ['fg', 'Statement'],
"       \ 'info':    ['fg', 'PreProc'],
"       \ 'border':  ['fg', 'Ignore'],
"       \ 'prompt':  ['fg', 'Conditional'],
"       \ 'pointer': ['fg', 'Exception'],
"       \ 'marker':  ['fg', 'Keyword'],
"       \ 'spinner': ['fg', 'Label'],
"       \ 'header':  ['fg', 'Comment'] }

lua << EOF
require('lspfuzzy').setup {}
require('cmpconf')
require('lspconf')
require("nvim-autopairs").setup {}
require('treesitterconf')
EOF
