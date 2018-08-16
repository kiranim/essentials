set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
 set rtp+=~/.vim/bundle/Vundle.vim
 call vundle#begin()
 " alternatively, pass a path where Vundle should install plugins
 "call vundle#begin('~/some/path/here')

 " let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

 " The following are examples of different formats supported.
 " Keep Plugin commands between vundle#begin/end.
 " plugin on GitHub repo
Plugin 'tpope/vim-fugitive'
 " plugin from http://vim-scripts.org/vim/scripts.html
"" Plugin 'L9'
 " Git plugin not hosted on GitHub
 Plugin 'git://git.wincent.com/command-t.git'
 " git repos on your local machine (i.e. when working on your own plugin)
 " The sparkup vim script is in a subdirectory of this repo called vim.
 " Pass the path to set the runtimepath properly.
 Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}

 " All of your Plugins must be added before the following line
 call vundle#end()            " required
 filetype plugin indent on    " required
 " To ignore plugin indent changes, instead use:
 "filetype plugin on
 "
 " Brief help
 " :PluginList       - lists configured plugins
 " :PluginInstall    - installs plugins; append `!` to update or just
 " :PluginUpdate
 " :PluginSearch foo - searches for foo; append `!` to refresh local cache
 " :PluginClean      - confirms removal of unused plugins; append `!` to
 " auto-approve removal
 "
 " see :h vundle for more details or wiki for FAQ
 " Put your non-Plugin stuff after this line
""Plugin 'scrooloose/nerdtree'
"""Plugin 'kien/ctrlp.vim'
""""Plugin 'scrooloose/nerdcommenter'
""""" Plugin 'Valloric/YouCompleteMe'
Plugin 'Raimondi/delimitMate'
""Plugin 'easymotion/vim-easymotion'
Plugin 'godlygeek/tabular'
Plugin 'bling/vim-airline'
"Plugin 'vim-airline/vim-airline-themes'

set incsearch
set hlsearch
set ignorecase
set smartcase
set nu
set tabstop=4
set shiftwidth=4
set expandtab
set tags=/vobs/fw-policy/tags

"""" nerd options
"map <C-n> :NERDTreeToggle<CR>
"autocmd StdinReadPre * let s:std_in=1
"autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
"let g:NERDTreeDirArrowExpandable = '>'
"let g:NERDTreeDirArrowCollapsible = 'v'
""""
"""" ctrlp options
""""
:hi CursorLine   cterm=NONE ctermbg=lightblue ctermfg=white guibg=lightred guifg=white
:hi CursorColumn cterm=NONE ctermbg=lightblue ctermfg=white guibg=darkred guifg=white
:nnoremap <Leader>c :set cursorline! cursorcolumn!<CR>
"set foldmethod=indent
"
":set cursorline
":set cursorcolumn

""set statusline=
""set statusline+=%7*\[%n]                                  "buffernr
""set statusline+=%1*\ %<%F\                                "File+path
""set statusline+=%2*\ %y\                                  "FileType
""set statusline+=%3*\ %{''.(&fenc!=''?&fenc:&enc).''}      "Encoding
""set statusline+=%3*\ %{(&bomb?\",BOM\":\"\")}\            "Encoding2
""set statusline+=%4*\ %{&ff}\                              "FileFormat (dos/unix..)
""set statusline+=%5*\ %{&spelllang}\%{HighlightSearch()}\  "Spellanguage & Highlight on?
""set statusline+=%8*\ %=\ row:%l/%L\ (%03p%%)\             "Rownumber/total (%)
""set statusline+=%9*\ col:%03c\                            "Colnr
""set statusline+=%0*\ \ %m%r%w\ %P\ \                      "Modified? Readonly? Top/bot.

autocmd BufWritePre * %s/\s\+$//e


set t_Co=256
set termencoding=utf-8
set encoding=utf-8
let g:airline_powerline_fonts = 1
""set list listchars=tab:»·,trail:·

hi Search cterm=NONE ctermfg=grey ctermbg=LightBlue

map W :wa^M
map! ^W ^[:wa^Ma]

"set cc=80

if (match(system('hostname'), 'build') >= 0)
set tag=/net/blr-lview-3/gitrepos/kmedlery/svcode/TAGS
else
set tag=/gitrepos/kmedlery/svcode/TAGS
endif



" Install DoxygenToolkit from
" http://www.vim.org/scripts/script.php?script_id=987
let g:DoxygenToolkit_authorName="Gerhard Gappmeier <gerhard.gappmeier@ascolab.com>"
