set autoindent
set number
set cursorline
set noerrorbells
set belloff=all
set wrap
set ruler

set tabstop=4
set shiftwidth=4
set expandtab

" Remove shift O lag
set timeout timeoutlen=5000 ttimeoutlen=100

inoremap <S-Tab> <C-d>

" Atom colours taken from https://github.com/joshdick/onedark.vim
syntax on
colorscheme onedark

" WSL yank support
let s:clip = '/mnt/c/Windows/System32/clip.exe'  " change this path according to your mount point
if executable(s:clip)
    augroup WSLYank
        autocmd!
        autocmd TextYankPost * if v:event.operator ==# 'y' | call system(s:clip, @0) | endif
    augroup END
endif