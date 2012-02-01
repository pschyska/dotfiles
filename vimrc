set nocompatible               " be iMproved
filetype off                   " required!

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle
" required! 
Bundle 'gmarik/vundle'
Bundle 'tpope/vim-fugitive'
Bundle 'Lokaltog/vim-easymotion'
Bundle 'rstacruz/sparkup', {'rtp': 'vim/'}
Bundle 'tpope/vim-rails'
Bundle 'scrooloose/nerdtree'
Bundle 'jistr/vim-nerdtree-tabs'
Bundle 'ervandew/supertab'
let g:SuperTabDefaultCompletionType = "context"

Bundle 'scrooloose/nerdcommenter'
Bundle 'scrooloose/syntastic'
Bundle "pschyska/damnpaul"
colorscheme damnpaul

Bundle 'mrtazz/simplenote.vim'
source ~/.simplenoterc

" Bundle 'ervandew/eclim', {'rtp': 'org.eclim.vimplugin/vim/'}

" statusline settings
set laststatus=2 " always show the status bar
" Without setting this, ZoomWin restores windows in a way that causes
" equalalways behavior to be triggered the next time CommandT is used.
" This is likely a bludgeon to solve some other issue, but it works
set noequalalways

" Start the status line
set statusline=%f\ %m\ %r

" Add fugitive if enabled
set statusline+=%{fugitive#statusline()}

" Add syntastic if enabled
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

" Finish the statusline
set statusline+=Line:%l/%L[%p%%]
set statusline+=Col:%v
set statusline+=Buf:#%n
set statusline+=[%b][0x%B]

" vim-scripts repos
Bundle 'gitv'
Bundle 'Align'
" Bundle 'L9'
" Bundle 'FuzzyFinder'
Bundle 'git://git.wincent.com/command-t.git'
map <C-t> :CommandT<CR>
imap <C-t> <ESC>:CommandT<CR>

" MISC
" auto-save on focus lose
"autocmd FocusLost * :wall
" hide toolbar
set go-=T
" Set 7 lines to the cursor - when moving vertical from http://amix.dk/vim/vimrc.html
set so=7
" after using ., move cursor back to editing location when you started (http://www.rousette.org.uk/blog/archives/vim-and-zsh-oh-my/)
nmap . .`[
" everything that goes to or from unnamed register will affect *, too (OSX
" cliboard)
set clipboard=unnamed
" Edit this file. I do this very often :-)
nmap <F12> :tabe ~/.vimrc<CR>
" source current buffer
nmap <F11> :source %<CR>

" ECLIM
au FileType java      imap <C-Space> <C-x><C-u>
au FileType java      nnoremap <silent> <buffer> <leader>i :JavaImportMissing<cr>:JavaImportClean<cr>:w<cr>
au FileType java      nnoremap <silent> <buffer> <leader>d :JavaDocSearch -x declarations<cr>
au FileType java      nnoremap <silent> <buffer> <cr> :JavaSearchContext<cr>
au FileType java      set shiftwidth=4 " eclipse uses 4 spaces to indent
au FileType java      set softtabstop=4

" autotags
" let g:autotagmaxTagsFileSize=1024*1024*200

" TAGBAR
" let g:tagbar_ctags_bin = '/usr/local/bin/ctags'
" nmap <F8> :TagbarToggle<CR>


" NERDTREE
map <Leader>f :NERDTreeFind<cr>


filetype plugin indent on     " required! 
"
" Brief help
" :BundleList          - list configured bundles
" :BundleInstall(!)    - install(update) bundles
" :BundleSearch(!) foo - search(or refresh cache first) for foo
" :BundleClean(!)      - confirm(or auto-approve) removal of unused bundles
"
" see :h vundle for more details or wiki for FAQ
" NOTE: comments after Bundle command are not allowed..
