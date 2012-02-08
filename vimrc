set nocompatible               " be iMproved
" vundle boilerplate "{{{
filetype off                   " required!

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle
" required!
Bundle 'gmarik/vundle'

"}}}

" bundles"{{{

" Langs
Bundle "tpope/vim-haml.git"
Bundle "pangloss/vim-javascript"
Bundle "tpope/vim-cucumber"
Bundle "tpope/vim-markdown"
Bundle "ajf/puppet-vim"
Bundle "bdd/vim-scala"
Bundle "nono/vim-handlebars"
Bundle "kchmck/vim-coffee-script"
Bundle "tpope/vim-rails"
Bundle "tpope/vim-git"
Bundle "timcharper/textile.vim"
Bundle "skwp/vim-rspec"
Bundle "cakebaker/scss-syntax.vim"
Bundle "vim-scripts/csv.vim"
Bundle "mmalecki/vim-node.js"
Bundle "vim-ruby/vim-ruby"
Bundle "vim-scripts/Arduino-syntax-file"

" Tools
Bundle "edsono/vim-matchit"
Bundle "tpope/vim-surround"
Bundle "garbas/vim-snipmate"
Bundle "tomtom/tlib_vim"
Bundle "MarcWeber/vim-addon-mw-utils"
Bundle "honza/snipmate-snippets"
Bundle "jbking/vim-pep8"
Bundle "michaeljsmith/vim-indent-object"
Bundle "tpope/vim-endwise"
Bundle "vim-scripts/vimwiki"
Bundle "ap/vim-css-color"
Bundle "chrisbra/NrrwRgn"
Bundle "vim-scripts/Rename2"
Bundle 'tpope/vim-fugitive'
  nmap <leader>gb :Gblame<CR>
  nmap <leader>gs :Gstatus<CR>
  nmap <leader>gd :Gdiff<CR>
  nmap <leader>gl :Glog<CR>
  nmap <leader>gc :Gcommit<CR>
  nmap <leader>gp :Git push<CR>
Bundle 'Lokaltog/vim-easymotion'
Bundle 'rstacruz/sparkup', {'rtp': 'vim/'}
Bundle 'tpope/vim-rails'
Bundle 'kwbdi.vim'
  nmap <C-W>! <Plug>Kwbd
Bundle 'Gundo'
  nmap <F5> :GundoToggle<CR>
  imap <F5> <ESC>:GundoToggle<CR>
Bundle 'git://git.wincent.com/command-t.git'
  let g:CommandTMaxFiles=20000
  let g:CommandTMatchWindowReverse=1
  let g:CommandTMaxHeight=40
  " don't limit the directory cache. I have lots of memory but not time :)
  let g:CommandTMaxCachedDirectories=0

  if has("gui_macvim") && has("gui_running")
    map <D-t> :CommandT<CR>
    imap <D-t> <ESC>:CommandT<CR>
  else
    map <C-t> :CommandT<CR>
    imap <C-t> <ESC>:CommandT<CR>
  endif
Bundle 'scrooloose/nerdtree'
  map <Leader>n :NERDTreeToggle<CR>
  map <Leader>f :NERDTreeFind<CR>
  let NERDTreeIgnore=['\.pyc$', '\.pyo$', '\.rbc$', '\.rbo$', '\.class$', '\.o', '\~$']
  let NERDTreeHijackNetrw = 0

  augroup AuNERDTreeCmd
  autocmd AuNERDTreeCmd VimEnter * call s:CdIfDirectory(expand("<amatch>"))
  autocmd AuNERDTreeCmd FocusGained * call s:UpdateNERDTree()

  " If the parameter is a directory, cd into it
  function! s:CdIfDirectory(directory)
    let explicitDirectory = isdirectory(a:directory)
    let directory = explicitDirectory || empty(a:directory)

    if explicitDirectory
      exe "cd " . fnameescape(a:directory)
    endif

    " Allows reading from stdin
    " ex: git diff | mvim -R -
    if strlen(a:directory) == 0
      return
    endif

    if directory
      NERDTree
      wincmd p
      bd
    endif

    if explicitDirectory
      wincmd p
    endif
  endfunction

  " NERDTree utility function
  function! s:UpdateNERDTree(...)
    let stay = 0

    if(exists("a:1"))
      let stay = a:1
    end

    if exists("t:NERDTreeBufName")
      let nr = bufwinnr(t:NERDTreeBufName)
      if nr != -1
        exe nr . "wincmd w"
        exe substitute(mapcheck("R"), "<CR>", "", "")
        if !stay
          wincmd p
        end
      endif
    endif

    if exists(":CommandTFlush") == 2
      CommandTFlush
    endif
  endfunction
Bundle 'Syntastic'
  let g:syntastic_enable_signs=1
  let g:syntastic_quiet_warnings=0
  let g:syntastic_auto_loc_list=2
Bundle 'ervandew/supertab'
  let g:SuperTabDefaultCompletionType = "context"
Bundle 'scrooloose/nerdcommenter'
  " NERDCommenter mappings
  if has("gui_macvim") && has("gui_running")
    map <D-/> <plug>NERDCommenterToggle<CR>
    imap <D-/> <Esc><plug>NERDCommenterToggle<CR>
  else
    map <leader> <plug>NERDCommenterToggle<CR>
    imap <leader> <Esc><plug>NERDCommenterToggle<CR>
  endif
Bundle 'Buffergator'
Bundle 'scrooloose/syntastic'
Bundle 'Gist.vim'
  let g:gist_clip_command = 'pbcopy'
  " detect filetype if vim failed auto-detection.
  let g:gist_detect_filetype = 1
Bundle 'grep.vim'
  let Grep_Xargs_Options = '-0' 
Bundle "pschyska/damnpaul"
  colorscheme damnpaul
"Bundle 'mrtazz/simplenote.vim'
  "source ~/.simplenoterc
" Bundle 'ervandew/eclim'
" installed with eclim installer
set rtp+=~/.vim/eclim
  au FileType java      imap <C-SPACE> <C-x><C-u>
  au FileType java      nnoremap <SILENT> <BUFFER> <LEADER>i :JavaImportMissing<CR>:JavaImportClean<CR>:w<CR>
  au FileType java      nnoremap <SILENT> <BUFFER> <LEADER>d :JavaDocSearch -x declarations<CR>
  au FileType java      nnoremap <SILENT> <BUFFER> <CR> :JavaSearchContext<CR>
  au FileType java      set shiftwidth=4 " eclipse uses 4 spaces to indent
  au FileType java      set softtabstop=4
  au FileType jsp       set shiftwidth=2
  au FileType jsp       set softtabstop=2
Bundle 'gitv'
Bundle 'Align'
Bundle 'AutoTag'
  let g:autotagmaxTagsFileSize=1024*1024*200
Bundle 'Tagbar'
  let g:tagbar_ctags_bin = '/usr/local/bin/ctags'
  nmap <F8> :TagbarToggle<CR>
Bundle 'unimpaired.vim'
  " Normal Mode: Bubble single lines
  nmap <C-Up> [e
  nmap <C-Down> ]e
  " Visual Mode: Bubble multiple lines
  vmap <C-Up> [egv
  vmap <C-Down> ]egv
Bundle 'ZoomWin'
  map <leader>zw :ZoomWin<CR>
"}}}

" settings "{{{

" misc {{{
set foldmethod=marker

" switch windows
map <C-h> <C-W>h
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-l> <C-W>l

" auto-save on alt-tab
au FocusLost * silent! wall
" auto-save when switching buffers
" NOTE: this doesn't behave as expected i.e. with CommandT (trying to switch
" from modified buffer still opens new split instead of saving)
" set hidden should be equivalent with auto saving on alt-tab for most
" use-cases. Set bot because NERDTree doesn't allow switching from modified
" buffer without autowriteall
set autowriteall
set hidden
if has("gui_running")
  " Automatically resize splits when resizing MacVim window
  autocmd VimResized * wincmd =
endif
" hide toolbar
set go-=T
" Set 7 lines to the cursor when moving vertical from http://amix.dk/vim/vimrc.html
set so=7
" after using ., move cursor back to editing location when you started (http://www.rousette.org.uk/blog/archives/vim-and-zsh-oh-my/)
nmap . .`[
" everything that goes to or from unnamed register will affect *, too (OSX cliboard)"
set clipboard=unnamed
" Edit .vimrc
nmap <F12> :tabe ~/.vimrc<CR>
" source current buffer
nmap <F11> :source %<CR>
nnoremap <SILENT> <BUFFER> <D-CR> :set invfullscreen<CR>

" }}}

" filetype settings from janus {{{
" Some file types should wrap their text
function! s:setupWrapping()
  set wrap
  set linebreak
  set textwidth=72
  set nolist
endfunction

filetype plugin indent on " Turn on filetype plugins (:help filetype-plugin)

" In Makefiles, use real tabs, not tabs expanded to spaces
au FileType make set noexpandtab

" Make sure all mardown files have the correct filetype set and setup wrapping
au BufRead,BufNewFile *.{md,markdown,mdown,mkd,mkdn,txt} setf markdown | call s:setupWrapping()

" Treat JSON files like JavaScript
au BufNewFile,BufRead *.json set ft=javascript

" make Python follow PEP8 ( http://www.python.org/dev/peps/pep-0008/ )
au FileType python set softtabstop=4 tabstop=4 shiftwidth=4 textwidth=79

" Remember last location in file, but not for commit messages.
" see :help last-position-jump
au BufReadPost * if &filetype !~ '^git\c' && line("'\"") > 0 && line("'\"") <= line("$")
  \| exe "normal! g`\"" | endif
" }}}

" statusline settings from janus"{{{
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
"}}}

"mappings from janus {{{

" use :w!! to write to a file using sudo if you forgot to 'sudo vim file'
" (it will prompt for sudo password when writing)
cmap w!! %!sudo tee > /dev/null %

" Toggle paste mode
nmap <silent> <F4> :set invpaste<CR>:set paste?<CR>
imap <silent> <F4> <ESC>:set invpaste<CR>:set paste?<CR>

" format the entire file
nmap <leader>fef ggVG=

" Next buffer
nmap <silent> ,. :bnext<CR>

" Previous buffer
nmap <silent> ,m :bprev<CR>

" Next tab
nmap <silent> ;' :tabnext<CR>
nmap <silent> ;l :tabprev<CR>

" upper/lower word
nmap <leader>u mQviwU`Q
nmap <leader>l mQviwu`Q

" upper/lower first char of word
nmap <leader>U mQgewvU`Q
nmap <leader>L mQgewvu`Q

" cd to the directory containing the file in the buffer
nmap <silent> <leader>cd :lcd %:h<CR>

" Create the directory containing the file in the buffer
nmap <silent> <leader>md :!mkdir -p %:p:h<CR>

" Some helpers to edit mode
" http://vimcasts.org/e/14
cnoremap %% <C-R>=expand('%:h').'/'<cr>
map <leader>ew :e %%
map <leader>es :sp %%
map <leader>ev :vsp %%
map <leader>et :tabe %%

" Swap two words
nmap <silent> gw :s/\(\%#\w\+\)\(\_W\+\)\(\w\+\)/\3\2\1/<CR>`'

" Underline the current line with '='
nmap <silent> <leader>ul :t.\|s/./=/g\|:nohls<cr>

" set text wrapping toggles
nmap <silent> <leader>tw :set invwrap<CR>:set wrap?<CR>

" find merge conflict markers
nmap <silent> <leader>fc <ESC>/\v^[<=>]{7}( .*\|$)<CR>

" Map the arrow keys to be based on display lines, not physical lines
map <Down> gj
map <Up> gk

" Toggle hlsearch with <leader>hs
nmap <leader>hs :set hlsearch! hlsearch?<CR>

" Adjust viewports to the same size
map <Leader>= <C-w>=

if has("gui_macvim") && has("gui_running")
  " Map command-[ and command-] to indenting or outdenting
  " while keeping the original selection in visual mode
  vmap <D-]> >gv
  vmap <D-[> <gv

  nmap <D-]> >>
  nmap <D-[> <<

  omap <D-]> >>
  omap <D-[> <<

  imap <D-]> <Esc>>>i
  imap <D-[> <Esc><<i

  " Bubble single lines
  nmap <D-Up> [e
  nmap <D-Down> ]e
  nmap <D-k> [e
  nmap <D-j> ]e

  " Bubble multiple lines
  vmap <D-Up> [egv
  vmap <D-Down> ]egv
  vmap <D-k> [egv
  vmap <D-j> ]egv

  " Map Command-# to switch tabs
  map  <D-0> 0gt
  imap <D-0> <Esc>0gt
  map  <D-1> 1gt
  imap <D-1> <Esc>1gt
  map  <D-2> 2gt
  imap <D-2> <Esc>2gt
  map  <D-3> 3gt
  imap <D-3> <Esc>3gt
  map  <D-4> 4gt
  imap <D-4> <Esc>4gt
  map  <D-5> 5gt
  imap <D-5> <Esc>5gt
  map  <D-6> 6gt
  imap <D-6> <Esc>6gt
  map  <D-7> 7gt
  imap <D-7> <Esc>7gt
  map  <D-8> 8gt
  imap <D-8> <Esc>8gt
  map  <D-9> 9gt
  imap <D-9> <Esc>9gt
else
  " Map command-[ and command-] to indenting or outdenting
  " while keeping the original selection in visual mode
  vmap <A-]> >gv
  vmap <A-[> <gv

  nmap <A-]> >>
  nmap <A-[> <<

  omap <A-]> >>
  omap <A-[> <<

  imap <A-]> <Esc>>>i
  imap <A-[> <Esc><<i
 
  " Bubble single lines
  nmap <C-Up> [e
  nmap <C-Down> ]e
  nmap <C-k> [e
  nmap <C-j> ]e

  " Bubble multiple lines
  vmap <C-Up> [egv
  vmap <C-Down> ]egv
  vmap <C-k> [egv
  vmap <C-j> ]egv

  " Make shift-insert work like in Xterm
  map <S-Insert> <MiddleMouse>
  map! <S-Insert> <MiddleMouse>

  " Map Control-# to switch tabs
  map  <C-0> 0gt
  imap <C-0> <Esc>0gt
  map  <C-1> 1gt
  imap <C-1> <Esc>1gt
  map  <C-2> 2gt
  imap <C-2> <Esc>2gt
  map  <C-3> 3gt
  imap <C-3> <Esc>3gt
  map  <C-4> 4gt
  imap <C-4> <Esc>4gt
  map  <C-5> 5gt
  imap <C-5> <Esc>5gt
  map  <C-6> 6gt
  imap <C-6> <Esc>6gt
  map  <C-7> 7gt
  imap <C-7> <Esc>7gt
  map  <C-8> 8gt
  imap <C-8> <Esc>8gt
  map  <C-9> 9gt
  imap <C-9> <Esc>9gt
endif

""
"" Command-Line Mappings
""

" Insert the current directory into a command-line path
cmap <C-P> <C-R>=expand("%:p:h") . "/"
 
"}}}

" settings from janus {{{

set number            " Show line numbers
set ruler             " Show line and column number
syntax enable         " Turn on syntax highlighting allowing local overrides
set encoding=utf-8    " Set default encoding to UTF-8

""
"" Whitespace
""

set nowrap                        " don't wrap lines
set tabstop=2                     " a tab is two spaces
set shiftwidth=2                  " an autoindent (with <<) is two spaces
set expandtab                     " use spaces, not tabs
set list                          " Show invisible characters
set backspace=indent,eol,start    " backspace through everything in insert mode

let macvim_hig_shift_movement = 1 " mvim shift-arrow-keys

" List chars
set listchars=""                  " Reset the listchars
set listchars=tab:\ \             " a tab should display as "  ", trailing whitespace as "."
set listchars+=trail:.            " show trailing spaces as dots
set listchars+=extends:>          " The character to show in the last column when wrap is
                                  " off and the line continues beyond the right of the screen
set listchars+=precedes:<         " The character to show in the last column when wrap is
                                  " off and the line continues beyond the right of the screen

""
"" Searching
""

set hlsearch    " highlight matches
set incsearch   " incremental searching
set ignorecase  " searches are case insensitive...
set smartcase   " ... unless they contain at least one capital letter

""
"" Wild settings
""

" TODO: Investigate the precise meaning of these settings
" set wildmode=list:longest,list:full

" Disable output and VCS files
set wildignore+=*.o,*.out,*.obj,.git,*.rbc,*.rbo,*.class,.svn,*.gem

" Disable archive files
set wildignore+=*.zip,*.tar.gz,*.tar.bz2,*.rar,*.tar.xz

" Ignore bundler and sass cache
" set wildignore+=*/vendor/gems/*,*/vendor/cache/*,*/.bundle/*,*/.sass-cache/*
set wildignore+=*/.bundle/*,*/.sass-cache/*

" Disable temp and backup files
set wildignore+=*.swp,*~,._*

" maven
set wildignore+=*/target

set wildignore+=tags
""
"" Backup and swap files
""

set backupdir=~/.vim/_backup//    " where to put backup files.
set directory=~/.vim/_temp//      " where to put swap files.

"}}}

"}}}

" vundle boilerplate "{{{
filetype plugin indent on     " required!
"}}}
