filetype off
filetype plugin indent on

set shell=/bin/bash
set nocompatible
set modelines=0
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab
set encoding=utf-8
set scrolloff=3
set autoindent smartindent
set cindent cinoptions=+0
set showmode
set showcmd
set hidden  " Allow switching buffers without writing to disk
set wildmenu
set wildmode=list:longest
set visualbell
set ttyfast
set ruler " Always show cursor position
set backspace=indent,eol,start
set laststatus=2
set nobackup
set nowritebackup
set noswapfile
set history=1000
set undolevels=3000
set pastetoggle=<F2>
set clipboard=unnamed

set wrap
set textwidth=79
set formatoptions=qrn1

set ignorecase
set smartcase
set gdefault
set incsearch
set showmatch
set hlsearch

syntax reset
syntax on

"folding settings
" set foldmethod=indent   "fold based on indent
" set foldnestmax=10      "deepest fold is 10 levels
" set nofoldenable        "dont fold by default
" set foldlevel=2         "this is just what i use

"Ignore these files when completing names and in Explorer
set wildignore=.svn,CVS,.git,*.o,*.a,*.class,*.mo,*.la,*.so,*.obj,*.swp,*.jpg,*.png,*.xpm,*.gif

""" syntastic
" let php_sync_method=20
" let g:syntastic_enable_signs=1
let g:syntastic_phpcs_disable=1

""" nerdtree
map <silent> <leader>n :NERDTreeMirrorToggle<CR>
let g:nerdtree_tabs_open_on_gui_startup=0

""" ultisnips
nmap <silent> <leader>es :UltiSnipsEdit<CR>
let g:UltiSnipsSnippetDirectories=["snippets"]

""" tagbar
map <leader>N :TagbarToggle<CR> 
if filereadable('/usr/local/bin/ctags')
    let g:tagbar_ctags_bin='/usr/local/bin/ctags'
endif

""" ack
nnoremap <leader>aa :Ack 
let g:ackprg="~/.vim/extra/ack -H --nocolor --nogroup --column"



let mapleader = ","

nmap <silent> <leader>ev :e $MYVIMRC<CR>
" nmap <silent> <leader>es :so $MYVIMRC<CR>
nmap <silent> <leader>ep :e ~/.vim/snippets/php.snippets<CR>
nmap <silent> <leader>ej :e ~/.vim/snippets/javascript.snippets<CR>
nmap <silent> <leader>, :w<CR>
nmap <leader>im :marks<CR>
nmap <leader>ir :registers<CR>

" Force saving files that require root permission
cmap w!! %!sudo tee > /dev/null %

" Reselect visual block after indent/outdent
" vnoremap < <gv
" vnoremap > >gv
" nnoremap / /\v
" vnoremap / /\v
nnoremap / :M/
nnoremap ? :M?
nnoremap ,/ /
nnoremap ,? ?
nnoremap <leader><space> :noh<cr>
nnoremap <tab> %
vnoremap <tab> %
" allow deleting selection without updating the clipboard (yank buffer)
vnoremap x "_x
vnoremap X "_X

"\l to toggle visible whitespace
nmap <silent> <leader>` :set list!<CR>

" find merge conflict markers
nmap <silent> <leader>cf <ESC>/\v^[<=>]{7}( .*\|$)<CR>

" cycle through quickfix list
" nnoremap <leader>cn :cnext<cr>
" nnoremap <leader>cp :cprevious<cr>

" Shift-tab to insert a hard tab
imap <silent> <S-tab> <C-v><tab>

" don't move the cursor after pasting
" (by jumping to back start of previously changed text)
noremap p p`[
noremap P P`[

" j/k should go up/down through VISIBLE lines, even if real lines wrap.
nnoremap j gj
nnoremap k gk

" set list
" set listchars=tab:▸\ ,eol:¬

" F1 opens help  <-- frickin annoying. disable.
inoremap <F1> <ESC>
nnoremap <F1> <ESC>
vnoremap <F1> <ESC>

" auto save on focus loss
" au FocusLost * :wa

" trim whitespace from ends of lines, convert tabs to 4 spaces
nnoremap <leader>W :%s/\s\+$//<cr>:%s/\t/    /gg<cr>:let @/=''<CR>

nnoremap <leader>S ?{<CR>jV/^\s*\}?$<CR>k:sort<CR>:noh<CR>
nnoremap <leader>B ? function <cr>jva{Von
"inoremap jj <ESC>
"nnoremap <leader>w <C-w>v<C-w>l
" silent! nmap <unique> <silent> <Leader>ii :CommandT<CR>

" CtrlP
silent! nmap <unique> <silent> <leader>pp :CtrlP<CR>
silent! nmap <unique> <silent> <leader>pb :CtrlPBuffer<CR>
silent! nmap <unique> <silent> <leader>pm :CtrlPMRU<CR>
let g:ctrlp_custom_ignore = {
  \ 'dir': '^(node_modules|vendor|.tmp)$',
  \ }

nnoremap <leader>h <C-w>h
nnoremap <leader>l <C-w>l
nnoremap <leader>j <C-w>j
nnoremap <leader>k <C-w>k
nnoremap <leader>wo <C-w>o
nnoremap <leader>wv <C-w>v<C-w>l
nnoremap <leader>ws <C-w>s
nnoremap <leader>wc <C-w>c
nnoremap <leader>wq <C-w>q
nnoremap <leader>ww <C-w><C-w>
nnoremap <leader>wh :hide<CR>
nnoremap <leader>w= <C-w>=

nnoremap <leader>bi :ls<CR>
nnoremap <leader>bd :bd<CR>
nnoremap <leader>bb :TMiniBufExplorer<CR>
nnoremap <leader>z :bn<CR>
nnoremap <leader>v :bp<CR>
nnoremap <Leader>1 :1b<CR>
nnoremap <Leader>2 :2b<CR>
nnoremap <Leader>3 :3b<CR>
nnoremap <Leader>4 :4b<CR>
nnoremap <Leader>5 :5b<CR>
nnoremap <Leader>6 :6b<CR>
nnoremap <Leader>7 :7b<CR>
nnoremap <Leader>8 :8b<CR>
nnoremap <Leader>9 :9b<CR>
nnoremap <Leader>0 :10b<CR>

" Use the arrows to do something useful
"map <right> :bn<cr>
"map <left> :bp<cr>

" Tab configuration
map <leader>tt :tabnew<cr>
map <leader>tn :tabnext<cr>
map <leader>tp :tabprev<cr>
map <leader>te :tabedit
map <leader>tc :tabclose<cr>
map <leader>tm :tabmove

" Fugitive.vim (git) bindings
"   :Gstatus -- Press `-` to add/reset a file's changes, or `p` to add/reset --patch that mofo.
nnoremap <leader>gs :Gstatus<cr>
"   :Gblame -- Press enter on a line to reblame the file as it stood in that commit, or`o` to open that commit in a split. 
nnoremap <leader>gb :Gblame<cr>
nnoremap <leader>gm :Gmove 
nnoremap <leader>gp :Ggrep 
nnoremap <leader>gl :Glog<cr>
nnoremap <leader>gr :Gread<cr>
nnoremap <leader>gg :Git 
nnoremap <leader>gd :Gdiff<cr>

" Opens an edit command with the path of the currently edited file filled
map <Leader>ee :e <C-R>=expand("%:p:h") . "/" <CR>

" Opens a tab edit command with the path of the currently edited file filled in
" Normal mode: <Leader>t
map <Leader>te :tabe <C-R>=expand("%:p:h") . "/" <CR>

" fix tabs
map <leader>tf :%s/\t/    /gg<cr>

nnoremap <C-F1> :if &go=~#'m'<Bar>set go-=m<Bar>else<Bar>set go+=m<Bar>endif<CR>
nnoremap <C-F2> :if &go=~#'T'<Bar>set go-=T<Bar>else<Bar>set go+=T<Bar>endif<CR>
nnoremap <C-F3> :if &go=~#'r'<Bar>set go-=r<Bar>else<Bar>set go+=r<Bar>endif<CR>


" When pressing <leader>cd switch to the directory of the open buffer
"map <leader>cd :cd %:p:h<cr>

" Map auto complete of (, ", ', [
"inoremap $1 ()<esc>i
"inoremap $2 []<esc>i
"inoremap $3 {}<esc>i
"inoremap $4 {<esc>o}<esc>O
"inoremap $q ''<esc>i
"inoremap $e ""<esc>i
"inoremap $t <><esc>i


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => General Abbrevs
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
iab xdate <c-r>=strftime("%d/%m/%y %H:%M:%S")<cr>

if has("gui_running")
    let g:molokai_original=1
    colorscheme molokai

    " set background=dark
    " colorscheme solarized

    " colorscheme codeschool

    " set background=dark
    " let g:solarized_termtrans=1
    " let g:solarized_termcolors=256
    " " let g:solarized_contrast="high"
    " let g:solarized_visibility="high"
    " colorscheme solarized

    " set guioptions=egrt
    " colorscheme mustang
    " set guioptions=egt

    set guioptions=egt
    set guioptions-=Tmr
endif

if has("gui_macvim")
    " set guifont=Bitstream\ Vera\ Sans\ Mono\ for\ Powerline:h13
    map <D-e> :bp<CR>
    map <D-u> :bn<CR>
    map <D-h> :bp<CR>
    map <D-l> :bn<CR>
    " set transparency=2
    set guifont=PragmataPro\ for\ Powerline:h15

    " argh
    " macmenu Tools.List\ Errors key=<nop>
    " map <D-e> :bp<CR>
    " map <D-u> :bn<CR>
    " map <D-h> :bp<CR>
    " map <D-l> :bn<CR>
    " macmenu Hide\ MacVim key=<nop>
    " macmenu Tools.List\ Errors key=<nop>

    " let g:Powerline_symbols='fancy'
    " let g:airline_powerline_fonts=0

elseif has("gui_running")
    set guifont=PragmataPro\ for\ Powerline\ 14
    " set guifont=Bitstream\ Vera\ Sans\ Mono\ 10
    set lines=40
    set columns=120
    " let g:Powerline_symbols='fancy'

elseif $TERM == "xterm-256color"
    " let g:Powerline_symbols="fancy"
    let g:airline_powerline_fonts=0
    colorscheme mustang

endif

if !exists('g:airline_symbols')
  let g:airline_symbols = {}
endif
let g:airline_symbols.space = "\ua0"
let g:airline_powerline_fonts=1

au! BufNewFile,BufRead pakefile set filetype=php
au! BufNewFile,BufRead Pakefile set filetype=php
au! BufNewFile,BufRead *.jh set filetype=javascript
au! BufNewFile,BufRead *.json set filetype=javascript
au! BufNewFile,BufRead Jakefile set filetype=javascript
au! BufNewFile,BufRead *.less set filetype=less
au! BufNewFile,BufRead bash_* set filetype=sh

au BufNewFile,BufReadPost *.coffee set shiftwidth=2 softtabstop=2 expandtab
"au BufWritePost *.coffee silent CoffeeMake!
autocmd filetype ruby set tabstop=2 shiftwidth=2 softtabstop=2

"
" DAMIAN CONWAY GOODIES
"

" Open help in a new tab
augroup HelpInTabs
    autocmd!
    autocmd BufEnter *.txt call HelpInNewTab()
augroup END
function! HelpInNewTab ()
    if &buftype == 'help'
         execute "normal \<C-W>T"
    endif
endfunction

" cnext/cprev...
nmap <silent> <RIGHT> :cnext<CR>
" nmap <silent> <RIGHT><RIGHT> :cnfile<CR><C-G>
nmap <silent> <LEFT> :cprev<CR>
" nmap <silent> <LEFT><LEFT> :cpfile<CR><C-G>

" Map space to page down
" nnoremap <SPACE> <PAGEDOWN>
" nnoremap <S-SPACE> <PAGEUP>
nnoremap <SPACE> <c-d>
nnoremap <S-SPACE> <c-u>

" Reload vimrc on save
augroup VimReload
    autocmd!
    autocmd BufWritePost $MYVIMRC source $MYVIMRC
augroup END

" Save persistent undo data to a nice, separate location
if has('persistent_undo')
    set undofile
    set undodir=$HOME/.tmp/VIM_UNDO_FILES
endif

" Make visual block mode ignore nothingspace
set virtualedit=block

" Start where you finished when reopening a file
autocmd BufReadPost *
\ if line("'\"") > 1 && line("'\"") <= line("$")
\| exe "normal! g`\""
\| endif

" Quicker global search-and-replace
nmap S :%s//g<LEFT><LEFT>
vmap s :s//g<LEFT><LEFT>

" Search folding (damian plugin)
" doesn't work? :(
" nmap <silent> <expr> zz FS_ToggleFoldAroundSearch()

" Smarter smartindenting
" No stupid outdent for scripting comments...
inoremap # X<C-H>#
" And no stupid shift-resistance either...
nnoremap <silent> >> :call ShiftLine()<CR>
function! ShiftLine()
    set nosmartindent
    normal! >>
    set smartindent
endfunction

"
" Thx, Damian
"

nnoremap <silent> <leader>ej :call OpenJsFromCoffee()<CR>
function! OpenJsFromCoffee()
    set bufhidden=hide
    " :setlocal noswapfile  " already my default
    " let jsfile = substitute('src', 'app', expand('%'))
    let $jsfile = substitute(expand('%'), 'src', 'app', '')
    let $jsfile = substitute($jsfile, '.coffee', '.js', '')
    e $jsfile
endfunction

" Thx, http://www.drbunsen.org/writing-in-vim.html
func! WordProcessorMode() 
  setlocal formatoptions=1 
  setlocal noexpandtab 
  " map j gj 
  " map k gk
  setlocal spell spelllang=en_us 
  " setlocal spell spellfile=~/.vim/extra/my.spellfile
  set thesaurus+=~/.vim/extra/mthesaur.txt
  set complete+=s
  set formatprg=par
  setlocal wrap 
  setlocal linebreak 
endfu 
com! WP call WordProcessorMode()


call pathogen#infect()
