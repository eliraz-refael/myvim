filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'									"Vundle handler
Plugin 'tpope/vim-vinegar'										"add some functionality to :e . and -
Plugin 'scrooloose/nerdtree'									"Nerd Tree
Plugin 'ctrlpvim/ctrlp.vim'										"Abiliy to search for files easly
" Plugin 'jelera/vim-javascript-syntax'							"Enable javascript syntax
Plugin 'Raimondi/delimitMate'									"Auto close parentacies/brackets
Plugin 'easymotion/vim-easymotion'								"Easy Motion plugin
Plugin 'tpope/vim-fugitive'										"Git plugin
Plugin 'idanarye/vim-merginal' 									"Git Brach plugin
Plugin 'Xuyuanp/nerdtree-git-plugin' 							"Nerdtree git plugin
Plugin 'pangloss/vim-javascript'								"Compliment extra syntaxing for javascript
Plugin 'nathanaelkane/vim-indent-guides'						"Add visual for indented lines
Plugin 'othree/html5-syntax.vim'								"HTML 5 Syntax
Plugin 'othree/html5.vim'										"HTML5 AutoComplete
Plugin 'othree/javascript-libraries-syntax.vim'					"Javascript libreries specific syntax
" Plugin 'wincent/command-t'                              		"Easy find files and buffers
Plugin 'tpope/vim-surround'										"Provides easy way to change surronding text
Plugin 'mileszs/ack.vim'										"Provides super fast search
Plugin 'mattn/emmet-vim'										"Provides easy way to create HTML nodes like this: div.class>a*5
Plugin 'tpope/vim-commentary'									"Easy way to comment stuff out
Plugin 'terryma/vim-multiple-cursors'							"Multiple cursors support
Plugin 'vim-airline/vim-airline'								"Adds nice status bar at the bottom
Plugin 'vim-airline/vim-airline-themes'							"Adds themes to the status bar
Plugin 'sjl/gundo.vim'											"A nice visual plugin that shows undo list
Plugin 'mxw/vim-jsx'											"JSX syntax highlight.
Plugin 'mhinz/vim-signify'										"Annotate git/svn changes
Plugin 'Valloric/MatchTagAlways'								"Always match HTML Tags when on HTML files.
" Plugin 'ryanoasis/vim-devicons'									"Add nice icons to files
Plugin 'scrooloose/syntastic' 									"Syntatic syntax checker
Plugin 'gisphm/vim-gitignore'									"Git ignore syntax highlight
Plugin 'heavenshell/vim-jsdoc'									"Auto doc generator
" Plugin 'othree/yajs.vim'										"Javascript es6 syntax highlight
" Plugin 'othree/es.next.syntax.vim'
Plugin 'isRuslan/vim-es6'										"Javascript es6 syntax highlight
Plugin 'ternjs/tern_for_vim'									"Javascript ability to navigate using tags
Plugin 'dkprice/vim-easygrep'									"Easy search accross files and folders
Plugin 'geekjuice/vim-mocha'									"Run mocha test from vim
" Plugin 'sheerun/vim-polyglot'
Plugin 'Shougo/neocomplete.vim'
" Color Themes
Plugin 'alessandroyorba/despacio'
Plugin 'bcicen/vim-vice'
Plugin 'rakr/vim-two-firewatch'
Plugin 'owickstrom/vim-colors-paramount'
Plugin 'tyrannicaltoucan/vim-quantum'
Plugin 'mhartington/oceanic-next'
Plugin 'jdkanani/vim-material-theme'
Plugin 'fxn/vim-monochrome'
Plugin 'altercation/vim-colors-solarized'
Plugin 'trusktr/seti.vim'
Plugin 'morhetz/gruvbox'
Plugin 'jacoborus/tender'
Plugin 'juanpabloaj/vim-pixelmuerto'
Plugin 'zazen'
Plugin 'rhysd/vim-color-shiny-white'
Plugin 'KeitaNakamura/neodark.vim'
Plugin 'zacanger/angr.vim'
Plugin 'whatyouhide/vim-gotham'
" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
