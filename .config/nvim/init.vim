call plug#begin()
Plug 'preservim/nerdtree', { 'on': 'NERDTreeToggle' }
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-rhubarb'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-speeddating'
Plug 'jceb/vim-orgmode'
Plug 'sheerun/vim-polyglot'
call plug#end()

let maplocalleader = ','

nnoremap <localleader>n :NERDTreeToggle<CR>
let g:NERDTreeWinSize=50
nnoremap <localleader>gb :.GBrowse<CR>
" nnoremap <localleader>gr :Git fetch origin main:main<CR>:Git rebase main<CR>

set nofixeol
set nofixendofline

colorscheme arrakeen

" make nvim behave more like vim defaults
set guicursor=i:block
let g:python3_host_prog = '/opt/homebrew/bin/python3'
set mouse=
