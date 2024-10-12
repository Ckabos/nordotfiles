" Plugins will be downloaded under the specified directory.
call plug#begin('~/.config/nvim/plugins')

" Declare the list of plugins.
Plug 'scrooloose/nerdtree'
Plug 'ghifarit53/tokyonight-vim'
Plug 'scrooloose/nerdcommenter'
Plug 'jiangmiao/auto-pairs'
Plug 'majutsushi/tagbar'
Plug 'ryanoasis/vim-devicons'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'yggdroot/indentline'
Plug 'lilydjwg/colorizer'

" List ends here. Plugins become visible to Vim after this call.
call plug#end()

set number
set mouse=a
set clipboard=unnamed
syntax enable
set showcmd
set encoding=utf-8
set showmatch
set tabstop=4 " tabulacion a 4 espacios

let mapleader = " "
nnoremap <leader>q :bd<CR>
nnoremap <Tab> :bn<CR>
nnoremap <S-Tab> :bp<CR>

" indentline plugin :)

set list lcs=tab:\┆\ 

" Tokio night theme plugin :)
set termguicolors

let g:tokyonight_style = 'night' " available: night, storm
let g:tokyonight_enable_italic = 1
let g:tokyonight_transparent_background = 1 " 0 o 1
let g:tokyonight_menu_selection_background = 'blue' " 'green', 'blue', 'red'
let g:tokyonight_cursor= 'blue' " 'auto', 'red','green', 'blue'.  default: auto 

colorscheme tokyonight

" NERDTree plugin :)
let NERDTreeQuitOnOpen=1 " cerrar al abrir archivo
let g:NERDTreeDirArrowExpandable = '▸'
let g:NERDTreeDirArrowCollapsible = '▾'

" Start NERDTree and put the cursor back in the other window.
autocmd VimEnter * NERDTree | wincmd p

" Exit Vim if NERDTree is the only window remaining in the only tab.
autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif

" If another buffer tries to replace NERDTree, put it in the other window, and bring back NERDTree.
autocmd BufEnter * if bufname('#') =~ 'NERD_tree_\d\+' && bufname('%') !~ 'NERD_tree_\d\+' && winnr('$') > 1 |
    \ let buf=bufnr() | buffer# | execute "normal! \<C-W>w" | execute 'buffer'.buf | endif

nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTreeToggle<CR>

" Tagbar plugin :)
nmap <F7> :TagbarToggle<CR>

" Vim airline plugin :)
let g:airline#extensions#tabline#enabled = 1

