let $RUBYHOME=$HOME."/.rbenv/versions/2.5.3"
set rubydll=$HOME/.rbenv/versions/2.5.3/lib/libruby.2.5.3.dylib

set nocompatible               " be iMproved

if !isdirectory(expand("~/.vim/bundle/vundle/.git"))
  !git clone git://github.com/gmarik/vundle.git ~/.vim/bundle/vundle
endif

filetype off                   " must be off before Vundle has run

set runtimepath+=~/.vim/bundle/vundle/

call vundle#rc()

Plugin 'mileszs/ack.vim'
Bundle 'gmarik/vundle'
Bundle "https://github.com/tpope/vim-fugitive"
Bundle "https://github.com/tpope/vim-rails.git"
Bundle "https://github.com/tpope/vim-surround.git"
Bundle "https://github.com/chrismetcalf/vim-yankring.git"
Bundle "https://github.com/chrismetcalf/vim-taglist.git"
Bundle "https://github.com/tpope/vim-endwise.git"
Bundle "https://github.com/scrooloose/syntastic.git"
Bundle "https://github.com/scrooloose/nerdtree.git"
Bundle "https://github.com/panozzaj/vim-autocorrect.git"
Bundle "https://github.com/tomtom/tcomment_vim.git"
Bundle "https://github.com/sjl/gundo.vim.git"
Bundle "https://github.com/clones/vim-fuzzyfinder.git"
Bundle "https://github.com/vim-scripts/Gist.vim.git"
Bundle "https://github.com/vim-scripts/L9.git"
Bundle "https://github.com/Bogdanp/rbrepl.vim.git"
Bundle 'https://github.com/altercation/vim-colors-solarized.git'
Bundle "https://github.com/kana/vim-textobj-user.git"
Bundle "https://github.com/nelstrom/vim-textobj-rubyblock.git"
Bundle "https://github.com/ervandew/supertab.git"
Bundle "jQuery"
Bundle "https://github.com/kchmck/vim-coffee-script.git"
Bundle "https://github.com/pangloss/vim-javascript.git"
Bundle "https://github.com/cakebaker/scss-syntax.vim.git"
Bundle "https://github.com/tpope/vim-haml.git"
Bundle "https://github.com/tpope/vim-markdown.git"
Bundle "https://github.com/tpope/vim-bundler.git"
Bundle "MarcWeber/vim-addon-mw-utils"
Bundle "tomtom/tlib_vim"
Bundle "honza/vim-snippets"
Bundle "garbas/vim-snipmate"
Bundle 'morhetz/gruvbox'

filetype plugin indent on     " and turn it back on!

runtime macros/matchit.vim    
