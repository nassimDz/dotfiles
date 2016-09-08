set nocompatible
call pathogen#infect()
call pathogen#helptags()

syntax on
set number
set tabstop=2
set autoindent
set cindent
set mouse=a
set showcmd
set backspace=indent,eol,start



set background=dark
let g:solarized_termcolors=256
" colorscheme desert
colorscheme brogrammer
"colorscheme gruvbox
"let g:gruvbox_contrast_dark=1


hi Normal ctermbg=none
hi CursorLine ctermbg=none
" hi Cursorline cterm=bold term=bold gui=bold
hi luaFunction ctermfg=27
hi t2tTable ctermfg=155
hi t2tTableTit ctermfg=155
hi t2tList ctermfg=127


set guifont=Roboto\ Mono\ for\ Powerline\ 11


set statusline="%f%m%r%h%w [%Y] [0x%02.2B]%< %F%=%4v,%4l %3p%% of %L"


set shiftwidth=2
set softtabstop=2
set whichwrap+=<,>,h,l,[,]

set smartcase

set cursorline


""""
nmap <C-S-N> :call <SID>SynStack()<CR>
function! <SID>SynStack()
	if !exists("*synstack")
		return
	endif
	echo map(synstack(line('.'), col('.')), 'synIDattr(v:val, "name")')
endfunc
""""


""""
nmap <C-S-P> :NERDTreeToggle<CR>
autocmd StdinReadPre * let s:std_in=1
autocmd vimenter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
""""


""""
" Txt2tags syntax
au BufNewFile,BufRead *.t2t                     setf txt2tags
""""



set laststatus=2


""""
set encoding=utf-8
scriptencoding utf-8
""""



" lightline.vim {
let g:lightline = {
      \ 'colorscheme': 'seoul256',
      \ 'component': {
      \   'readonly': '%{&readonly?"\ue0a2":""}',
      \ },
      \ 'separator': { 'left': '', 'right': '' },
      \ 'subseparator': { 'left': '', 'right': '' }
      \ }

set noshowmode

" }


""""
" indentation comme emacs
set cinkeys=0{,0},0),0#,!<Tab>,;,:,o,O,e
set indentkeys=!<Tab>,o,O
map <Tab> i<Tab><Esc>^
filetype indent on
" set cinoptions=:0,(0,u0,W1s
set cinoptions={1s,>2s,e-1s,^-1s,n-1s,:1s,p5,i4,(0,u0,W1s shiftwidth=2
autocmd FileType * setlocal indentkeys+=!<Tab>
""""

""""
" des binds pour aller en fin/début de ligne
map <C-A> <Home>
map <C-E> <End>
imap <C-A> <Home>
imap <C-E> <End>
cmap <C-A> <Home>
cmap <C-E> <End>
""""

""""
" binds for tabs
nnoremap <silent> <C-Right> :tabnext<CR>
nnoremap <silent> <C-Left> :tabprev<CR>

nnoremap <silent> <C-S-Tab> :tabprev<CR>
nnoremap <silent> <C-Tab> :tabnext<CR>
"nnoremap <silent> <A-h> :execute 'silent! tabmove ' . (tabpagenr()-2)<CR>
"nnoremap <silent> <A-l> :execute 'silent! tabmove ' . tabpagenr()<CR>
nnoremap <C-t> :tabnew<CR>
nnoremap <C-w> :tabclose<CR>
inoremap <C-t> <Esc>:tabnew<CR>
inoremap <C-w> <Esc>:tabclose<CR>
""""
