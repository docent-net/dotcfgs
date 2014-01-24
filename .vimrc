execute pathogen#infect()
syntax on
filetype on
filetype plugin indent on

"taglist
map <silent> <F8> :TlistToggle<cr>  
let Tlist_Ctags_Cmd = 'ctags'
let Tlist_Show_One_File = 1
let Tlist_Exit_OnlyWindow = 1
let Tlist_Use_Right_Window = 1  

" mutt compose line width:
au BufRead ~/.cache/mutt/mutt-* set tw=72

"tabs mappings:
map . gt 
map , gT 

" python autocomplete:
autocmd FileType python set omnifunc=pythoncomplete#Complete

"python pep8:
set expandtab       "Use softtabstop spaces instead of tab characters for indentation
set textwidth=79
set tabstop=8
set softtabstop=4   "Indent by 4 spaces when pressing <TAB>
set shiftwidth=4    "Indent by 4 spaces when using >>, <<, == etc.
set autoindent      "Keep indentation from previous line
set smartindent     "Automatically inserts indentation in some cases
:syntax on

nnoremap <buffer> K :<C-u>execute "!pydoc " . expand("<cword>")<CR>

augroup vimrc
    au!
    autocmd FileType css setlocal sw=4 sts=4 et
    autocmd FileType html setlocal sw=2 sts=2 et
    autocmd FileType javascript setlocal sw=2 sts=2 et
    autocmd FileType perl setlocal sw=4 sts=4 et
    autocmd FileType php setlocal sw=4 sts=4 et
    autocmd FileType ruby setlocal sw=2 sts=2 et
    autocmd FileType sql setlocal et
    autocmd FileType text setlocal sw=2 sts=2 et tw=79
augroup END

set statusline=%F%m%r%h%w\ [TYPE=%Y\ %{&ff}]\
            \ [%l/%L\ (%p%%)

" let's higlight any line over 79 characters:
augroup vimrc_autocmds
      autocmd BufEnter * highlight OverLength ctermbg=darkgrey guibg=#592929
      autocmd BufEnter * match OverLength /\%79v.*/
augroup END
