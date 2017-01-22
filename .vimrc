set nocompatible              " be iMproved, required
set backupcopy=yes
so ~/.vim/plugins.vim
set noeol
set binary
set clipboard=unnamedplus
" set paste
syntax enable
set backspace=indent,eol,start                  "Make backspace behave like every other editor.
let mapleader = ',' 			            	"The default is \, but a comma is much better.
set noerrorbells visualbell t_vb=              	"No damn bells!
set autowriteall                                "Automatically write the file when switching buffers.
set complete=.,w,b,u 	            			"Set our desired autocompletion matching.
set tabstop=4
set noexpandtab
set softtabstop=4
set shiftwidth=4
set autoindent
set backupdir=~/.vim/backup//
set directory=~/.vim/swap//
" set undodir=~/.vim/undo//
if has('persistent_undo')      "check if your vim version supports it
  set undofile                 "turn on the feature  
  set undodir=$HOME/.vim/undo  "directory where the undo files will be stored
  endif     

"-------------Searching--------------"

set hlsearch
set incsearch

"-------------Visuals--------------"
set number					"Let's activate line numbers.
set linespace=12
set background=dark

" for vim 8
if (has("termguicolors"))
 set termguicolors
endif

colorscheme gruvbox

set guifont=Fira\ Code\ 16
" set t_Co=256
set cursorline

set guioptions-=l
set guioptions-=L
set guioptions-=r
set guioptions-=R
set guioptions-=e
set guioptions-=F
set guioptions-=m
set guioptions-=T

set diffopt+=vertical

"-------------Mapping--------------"
nmap <Leader>ev :tabedit $MYVIMRC<cr>

nmap <Leader><space> :nohlsearch<cr>
nmap <Leader>o :on<cr>
nmap <C-b> :NERDTreeToggle<cr>
nmap <C-e> :CtrlPMRUFiles<cr>
" nmap <C-r> :CtrlPBufTag<cr>
" nmap <C-s> :w<cr>
nmap <C-Leftmouse> :TernDef<cr>

" fugitive git bindings
nnoremap <space>ga :Git add %:p<CR><CR>
nnoremap <space>gs :Gstatus<CR>
nnoremap <space>gc :Gcommit -v -q<CR>
nnoremap <space>gt :Gcommit -v -q %:p<CR>
nnoremap <space>gd :Gdiff<CR>
nnoremap <space>ge :Gedit<CR>
nnoremap <space>gr :Gread<CR>
nnoremap <space>gw :Gwrite<CR><CR>
nnoremap <space>gl :silent! Glog<CR>:bot copen<CR>
nnoremap <space>gp :Ggrep<Space>
nnoremap <space>gm :Gmove<Space>
nnoremap <space>gb :Git branch<Space>
nnoremap <space>go :Git checkout<Space>
nnoremap <space>gps :Git push -u<CR>
nnoremap <space>gpl :Git pull<CR>
"----------Plugins-----------"
"/
"/ CtrlP
"/
let g:ctrlp_custom_ignore = "node_modules\DS_Store\|git\|svn\|build"
let g:ctrlp_match_window = 'top,order:ttb,min:1,max:30,results:30'
let g:ctrlp_cache_dir = $HOME . '/.cache/ctrlp'
if executable('ag')
  let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'
endif
nmap <M-w> :cd ~/t2kdev/cgs/projects/frontend/cgs-frontend-war/src/main/webapp<cr>

"/
"/ NERDTree
"/
let NERDTreeHijackNetrw = 0
nmap <M-f> :NERDTreeFind<cr>
let NERDTreeShowHidden=1
"/
"/ AirLine
"/
set laststatus=2
let g:airline_theme='sol'
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'

"/
"/	Signify
"/
let g:signify_vcs_list = ['git', 'svn']

"/
"/	Gundo
"/
nmap <F5> :GundoToggle<cr>
"/
"/ Command-T ignore files
"/
" let g:CommandTWildIgnore=&wildignore . ",*/node_modules"
" let g:CommandTWildIgnore=&wildignore . ",*/build"

"/
"/ DeliMate (Auto closing "[})
"/
let delimitMate_expand_cr = 1

"/
"/ Javascript syntax
"/
set foldmethod=syntax
set foldlevelstart=1
let javaScript_fold=1         " JavaScript
let g:used_javascript_libs = 'react'
let g:javascript_plugin_jsdoc = 1
let g:jsx_ext_required = 0
highlight link javascriptProperty javascriptBrackets
"Show html tags
let g:mta_filetypes = { 'html' : 1, 'php' : 1, 'xml' : 1, 'jsx': 1, 'javascript': 1}

"Context coloring
" let g:js_context_colors_colorize_comments = 1
" let g:js_context_colors_comment_higroup = 'Comment'
" let g:js_context_colors_highlight_function_names = 1
" let g:js_context_colors_block_scope_with_let = 1
" let g:js_context_colors_jsx = 1
" let g:js_context_colors_show_error_message = 1
"/
"/ Syntastic Eslint configurations
"/
let g:syntastic_javascript_checkers = ['eslint']

"-------------Auto-Commands--------"

augroup autosourcing
    autocmd!
    autocmd BufWritePost .vimrc source %
augroup END


"------------AutoComplete functions-----"
filetype plugin on
au FileType php setl ofu=phpcomplete#CompletePHP
au FileType ruby,eruby setl ofu=rubycomplete#Complete
au FileType html,xhtml setl ofu=htmlcomplete#CompleteTags
au FileType c setl ofu=ccomplete#CompleteCpp
au FileType css setl ofu=csscomplete#CompleteCSS
au FileType js,jsx,javascript setl ofu=javascriptcomplete#CompleteJS
au BufRead,BufNewFile *.eslintrc set filetype=json
au BufRead,BufNewFile *.jsx set filetype=javascript
"------------------ NeoComplete Options ------------"
let g:neocomplete#enable_at_startup = 1
let g:neocomplete#enable_smart_case = 1
let g:neocomplete#sources#syntax#min_keyword_length = 3
let g:neocomplete#sources#dictionary#dictionaries = {
			\ 'default' : '',
			\ 'vimshell' : $HOME.'/.vimshell_hist',
			\ 'scheme' : $HOME.'/.gosh_completions'
			\ }
" <CR>: close popup and save indent.
" inoremap <silent> <CR> <C-r>=<SID>my_cr_function()<CR>
" function! s:my_cr_function()
" 	return (pumvisible() ? "\<C-y>" : "" ) . "\<CR>"
" 	" For no inserting <CR> key.
" 	"return pumvisible() ? "\<C-y>" : "\<CR>"
" endfunction
" <TAB>: completion.
inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"
" <C-h>, <BS>: close popup and delete backword char.
" inoremap <expr><C-h> neocomplete#smart_close_popup()."\<C-h>"
" inoremap <expr><BS> neocomplete#smart_close_popup()."\<C-h>"
" Close popup by <Space>.
"inoremap <expr><Space> pumvisible() ? "\<C-y>" : "\<Space>"
" Enable heavy omni completion.
if !exists('g:neocomplete#sources#omni#input_patterns')
	let g:neocomplete#sources#omni#input_patterns = {}
endif