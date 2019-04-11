nnoremap E :Explore<CR>
let g:netrw_localmovecmd='mv'
let g:netrw_preview=1
let g:netrw_alto=0
let g:netrw_keepdir=0  " needed for moving files
let g:netrw_banner=0
let g:netrw_sort_by='time'
let g:netrw_sort_direction='reverse'
let g:netrw_bufsettings = 'nu noma nomod nobl nowrap ro'
let g:netrw_list_hide= '.*\.pyc,.*\.swp$'



set nu
set tabstop=8 softtabstop=0 expandtab shiftwidth=2 smarttab
set autoindent

syntax on
set ruler


nnoremap Q :qa!<CR>
nnoremap W :w<CR>

nnoremap <S-h> 2h
nnoremap <S-k> 2k
nnoremap <S-j> 2j
nnoremap <S-l> 2l

vmap <S-c> "*y

xnoremap p pgvy
set timeoutlen=1000 ttimeoutlen=0
let g:loaded_matchparen=1

