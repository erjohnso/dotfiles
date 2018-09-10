" Mappings to navigate vim split windows that work well with tmux and GCE
" Normally use CTRL-W and hjkl, but CTRL-W likes to close chrome windows :(
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

setlocal spell spelllang=en_us
set ts=4
set sts=4
set sw=4
set sm
set ruler
set number
"set et  # for those days I do golang dev and need tabs vs spaces
set viminfo=""
set nohls
set ai
set ic
set colorcolumn=80
set nospell
set listchars=eol:$,tab:..,trail:~,extends:>,precedes:<
set list
set background=dark
syn on
