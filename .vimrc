set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required

"availible colorscheme
"molokai
"PaperColor
":AirlineTheme

Plugin 'VundleVim/Vundle.vim'
Plugin 'thaerkh/vim-workspace'
Plugin 'mustache/vim-mustache-handlebars'
Plugin 'Chiel92/vim-autoformat'
Plugin 'NLKNguyen/papercolor-theme'
Plugin 'flazz/vim-colorschemes'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'scrooloose/nerdtree'
Plugin 'tpope/vim-fugitive'
Plugin 'scrooloose/syntastic'

Bundle "b3niup/numbers.vim"



" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
"
"basic setting for themes plugins
colorscheme molokai
let g:airline_theme='distinguished'
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'

"settings for my powerline.sh
"follow this video if you want to repeat and understand it! : https://www.youtube.com/watch?v=_D6RkmgShvU
"don't forget to set the path so it fit your version of python!
set rtp+=/usr/local/lib/python3.5/dist-packages/powerline/bindings/vim/
set laststatus=2
set showtabline=1
set noshowmode
set t_Co=256
"

"Break the habits to use arrow keys

"noremap <up>    :echom 'USE K TO GO UP'<CR>
"noremap <down>  :echom 'USE J TO GO DOWN'<CR>
"noremap <left>  :echom 'USE H TO GO LEFT'<CR>
"noremap <right> :echom 'USE L TO GO RIGHT'<CR>
"inoremap <up>    <ESC>:echom 'USE K TO GO UP'<CR>
"inoremap <down>  <ESC>:echom 'USE J TO GO DOWN'<CR>
"inoremap <right> <ESC>:echom 'USE L TO GO RIGHT'<CR>
"inoremap <left>  <ESC>:echom 'USE H TO GO LEFT'<CR>

"map a key for nerd tree
map <C-n> :NERDTreeToggle<CR>

"open nerd tree on start
"autocmd vimenter * NERDTree

"nerdTree symbols for exploring folder
let g:NERDTreeDirArrowExpandable =  '▸'
let g:NERDTreeDirArrowCollapsible = '▾'

"Syntastic settings

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line
"
syntax on
