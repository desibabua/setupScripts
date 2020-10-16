set hlsearch                  "sets highlights
set nu                        "sets number
set ruler                     "shows pointer location
set showcmd                   " show incomplete commands
set history=50                "sets history
set incsearch                 "search as i type
set tabstop=2
set softtabstop=2
set shiftwidth=2              "set backspace for tab as tab
set expandtab
set ls=2
set autoindent
set noremap
set foldmethod=indent
set foldnestmax=10
set nofoldenable
set foldlevel=2
set wrap
set foldmethod=indent
set foldnestmax=10
set nofoldenable
filetype plugin indent on
syntax enable
let mapleader = ","
vnoremap <c-y> "*y
imap <leader>k <Esc>
vmap <leader>k <Esc>
map <leader>j ggvG$
imap <leader>l <Esc>:wq<CR>
map <leader>l <Esc>gg=G``:wq!<CR>
imap <leader>u <Esc>u<CR>ki
imap <leader>w <Esc>gg=G``<Esc>:w<CR>
map <leader>w <Esc>gg=G``:w<CR>
map <leader>q :q!<CR>
vmap <leader>c <s-I>//<Esc>
map <leader><space> :nohlsearch<CR>
map <leader>i <Esc>gg=G``i
map <leader>t :NERDTree<CR>
map <c-t> :w<CR>:tabnew<CR>
imap <c-t> <Esc>:w<CR>:tabnew<CR>
map <c-n> :w<CR>:tabn<CR>
imap <c-n> <Esc>:w<CR>:tabn<CR>
map <leader>e :SyntasticToggleMode<CR>
imap f<tab> const = function() {<CR>return ;<CR>};<CR><Esc>3kf=i
imap d<tab> describe("",function() {<CR>it("",function() {<CR>});<CR>});<CR><Esc>4k0f"a
imap t<tab> it("",function() {<CR>});<CR><Esc>2k2f"i




call plug#begin('~/.vim/plugged')
Plug 'Yggdroot/indentLine'
call plug#end()
set backspace=indent,eol,start
set background=dark
colorscheme dracula

execute pathogen#infect()
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 0
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
syntax on
let g:syntastic_javascript_checkers = ['jshint']
let g:syntastic_javascript_eslint_exe = 'npm run lint --'
