" Hot key
nmap <S-F9> :set nofoldenable<CR>
imap <S-F9> <ESC>:set nofoldenable<CR>

nmap <S-F10> :set fdl=1<CR> :set fdm=indent<CR>
imap <S-F10> <ESC>:set fdl=1<CR> :set fdm=indent<CR>

" Mvim setting
set nowrap
set guifont=Monaco:h16
set number
set expandtab
set shiftwidth=4
set softtabstop=4
set tabstop=4
set autoindent
set colorcolumn=50
" NeoBundle setting

if has('vim_starting')
  if &compatible 
    set nocompatible               " Be iMproved
  endif

  " Required:
  set runtimepath+=/Users/lizhe/.vim/bundle/neobundle.vim/
endif

" Required:
call neobundle#begin(expand('/Users/lizhe/.vim/bundle'))

" Let NeoBundle manage NeoBundle
" Required:
NeoBundleFetch 'Shougo/neobundle.vim'

" Add or remove your Bundles here:
NeoBundle 'Shougo/neocomplcache'
NeoBundle 'Shougo/neosnippet.vim'
NeoBundle 'Shougo/neosnippet-snippets'
NeoBundle 'tpope/vim-fugitive'
NeoBundle 'ctrlpvim/ctrlp.vim'
NeoBundle 'flazz/vim-colorschemes'
NeoBundle 'scrooloose/nerdtree'
NeoBundle 'jistr/vim-nerdtree-tabs'
NeoBundle 'tomasr/molokai'
" You can specify revision/branch/tag.
NeoBundle 'Shougo/vimshell', { 'rev' : '3787e5' }

" Required:
call neobundle#end()

" Required:
filetype plugin indent on

let NERDChristmasTree=1
let NERDTreeAutoCenter=1
let NERDTreeMouseMode=2
let NERDTreeShowBookmarks=1
let NERDTreeShowFiles=1
let NERDTreeShowHidden=1
let NERDTreeShowLineNumbers=1
let NERDTreeWinPos='left'
let NERDTreeWinSize=31
let NERDTreeQuitOnOpen=0
let g:nerdtree_tabs_open_on_console_startup=1
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif
map <silent> <S-n> :NERDTreeTabsToggle<CR>

" Scheme setting
colorscheme molokai

" Plugin key-mappings.
imap <C-k>     <Plug>(neosnippet_expand_or_jump)
smap <C-k>     <Plug>(neosnippet_expand_or_jump)
xmap <C-k>     <Plug>(neosnippet_expand_target)

" SuperTab like snippets behavior.
imap <expr><TAB> neosnippet#expandable_or_jumpable() ?
\ "\<Plug>(neosnippet_expand_or_jump)"
\: pumvisible() ? "\<C-n>" : "\<TAB>"
smap <expr><TAB> neosnippet#expandable_or_jumpable() ?
\ "\<Plug>(neosnippet_expand_or_jump)"
\: "\<TAB>"

" For snippet_complete marker.
if has('conceal')
  set conceallevel=2 concealcursor=niv
endif
let g:neosnippet#enable_snipmate_compatibility = 1

" If there are uninstalled bundles found on startup,
" this will conveniently prompt you to install them.
NeoBundleCheck
