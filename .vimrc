" Specify a directory for plugins
" - For Neovim: ~/.local/share/nvim/plugged
" - Avoid using standard Vim directory names like 'plugin'
set nocompatible
call plug#begin('~/.vim/plugged')

" Make sure you use single quotes
" On-demand loading

"git interface
Plug 'tpope/vim-fugitive'
" Auto generate ctags
Plug 'ludovicchabant/vim-gutentags'
" Async run
Plug 'skywind3000/asyncrun.vim'
" Async code check, like syntastic
" Plug 'neomake/neomake'
Plug 'w0rp/ale'
" Show differences, like gitgutter
Plug 'mhinz/vim-signify'
" Auto complete
Plug 'Valloric/YouCompleteMe'

" Plug 'wakatime/vim-wakatime'

Plug 'Yggdroot/indentLine'
Plug 'elzr/vim-json'

Plug 'Chiel92/vim-autoformat'

Plug 'Yggdroot/LeaderF'
Plug 'Raimondi/delimitMate'
Plug 'justinmk/vim-dirvish'

Plug 'jpalardy/spacehi.vim'
Plug 'scrooloose/nerdcommenter'
Plug 'vim-scripts/a.vim'
Plug 'scrooloose/nerdtree'
Plug 'Lokaltog/vim-powerline'
Plug 'klen/python-mode'
Plug 'croaky/vim-colors-github'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'mileszs/ack.vim'
Plug 'majutsushi/tagbar'
Plug 'tomasr/molokai'
Plug 'tpope/vim-pathogen'
Plug 'nvie/vim-flake8'
" Plug 'tpope/vim-projectionist'
Plug 'mboughaba/vim-lessmess'

" Text Object
Plug 'kana/vim-textobj-user'
Plug 'kana/vim-textobj-indent'
Plug 'kana/vim-textobj-syntax'
Plug 'kana/vim-textobj-function', { 'for':['c', 'cpp', 'vim', 'java'] }
Plug 'sgur/vim-textobj-parameter'

" Colors !!
Plug 'mkarmona/colorsbox'
Plug 'morhetz/gruvbox'
Plug 'tomasr/molokai'
Plug 'rakr/vim-one'
Plug 'joshdick/onedark.vim'
" Plug 'Gabirel/molokai'
Plug 'chriskempson/tomorrow-theme'
Plug 'KeitaNakamura/neodark.vim'
Plug 'kien/rainbow_parentheses.vim'
Plug 'octol/vim-cpp-enhanced-highlight'

Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" Initialize plugin system
call plug#end()

set tags=./.tags;,.tags

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => General
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Sets how many lines of history VIM has to remember
set history=700

" Finding files
set path+=**
set wildmenu

set lazyredraw
" Enable filetype plugins
filetype plugin indent on

" Set to auto read when a file is changed from the outside set autoread

" With a map leader it's possible to do extra key combinations
" like <leader>w saves the current file
let mapleader = ","
let g:mapleader = ","

" Fast saving
nmap <leader>w :w!<cr>

" paste tooggle
set pastetoggle=<F6>

" 让配置变更立即生效
" autocmd BufWritePost $MYVIMRC source $MYVIMRC

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => VIM user interface
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" 总是显示状态栏
set laststatus=2
"turn on numbering
set nu

"Always show current position
set ruler

" Highlight search results
set hlsearch
" 高亮显示当前行/列
set cursorline
"set cursorcolumn

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Colors and Fonts
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" 允许用指定语法高亮配色方案替换默认方案
if !exists("g:syntax_on")
    syntax enable
endif
set guifont=Monaco:h19

" Set utf8 as standard encoding and en_US as the standard language
set encoding=utf8
set fileencodings=ucs-bom,utf-8,cp936
set fileencoding=utf-8

"set t_Co=256

" let g:solarized_termcolors=256
"let g:rehash256  = 1
"set background=dark
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Files, backups and undo
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Turn backup off, since most stuff is in SVN, git et.c anyway...
set nobackup
set nowb
set noswapfile

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""" " => Text, tab and indent related
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Use spaces instead of tabs
set expandtab

" Be smart when using tabs ;)
set smarttab

" 1 tab == 4 spaces
set shiftwidth=4
set tabstop=4

" Linebreak on 500 characters
set lbr
set tw=500

set ai "Auto indent
set si "Smart indent
set wrap "Wrap lines


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Moving around, tabs, windows and buffers
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"split navigations
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>
set langmenu=zh_CN.UTF-8
set cmdheight=2
set enc=utf-8

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Editing mappings
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Remap VIM 0 to first non-blank character
map 0 ^

" jk to exit Insert mode
inoremap jk <Esc>

"use space to open folds
nnoremap <space> za
set iskeyword+=_,$,@,%,#,-

" 命令c-n c-p代替上,下
cnoremap <c-n> <down>
cnoremap <c-p> <up>

" 防止水平滑动的时候失去选择
xnoremap <  <gv
xnoremap >  >gv

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Highlight setting
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" 当光标一段时间保持不动了，就禁用高亮
"autocmd cursorhold * set nohlsearch
" 当输入查找命令时，再启用高亮
noremap n :set hlsearch<cr>n
noremap N :set hlsearch<cr>N
noremap / :set hlsearch<cr>/
noremap ? :set hlsearch<cr>?
noremap * *:set hlsearch<cr>

" 打开文件时恢复光标位置
autocmd BufReadPost *
    \ if line("'\"") > 1 && line("'\"") <= line("$") |
    \   exe "normal! g`\"" |
    \ endif

" Enable matchit
packadd! matchit
autocmd FileType python let b:match_words = '\<if\>:\<elif\>:\<else\>'

" 当前行高亮只出现在当前窗口，而且在插入模式中关闭
" autocmd InsertLeave,WinEnter * set cursorline
" autocmd InsertEnter,WinLeave * set nocursorline
autocmd WinLeave * set nocursorline

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Filetype
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
au! BufNewFile,BufRead *.hmap,*.rmap,*.omap setf json


"------------Start Python PEP 8 stuff----------------
" Number of spaces that a pre-existing tab is equal to.
" au BufRead,BufNewFile *py,*pyw,*.c,*.h set tabstop=4

"spaces for indents
" au BufRead,BufNewFile *.py,*pyw set shiftwidth=4
" au BufRead,BufNewFile *.py,*.pyw set expandtab
" au BufRead,BufNewFile *.py set softtabstop=4

" Use the below highlight group when displaying bad whitespace is desired.
highlight BadWhitespace ctermbg=red guibg=red

" Display tabs at the beginning of a line in Python mode as bad.
" au BufRead,BufNewFile *.py,*.pyw match BadWhitespace /^\t\+/
" Make trailing whitespace be flagged as bad.
" au BufRead,BufNewFile *.py,*.pyw,*.c,*.h match BadWhitespace /\s\+$/

" Wrap text after a certain number of characters
" au BufRead,BufNewFile *.py,*.pyw, set textwidth=100

" Use UNIX (\n) line endings.
" au BufNewFile *.py,*.pyw,*.c,*.h set fileformat=unix

" Set the default file encoding to UTF-8:
set encoding=utf-8

" For full syntax highlighting:
let python_highlight_all=1

" Keep indentation level from previous line:
autocmd FileType python set autoindent

" make backspaces more powerfull
set backspace=indent,eol,start

"Folding based on indentation:
autocmd FileType python set foldmethod=indent
set foldlevelstart=2
"----------Stop python PEP 8 stuff--------------

" self-define funcitons
" Map ALT to meta
function! Terminal_MetaMode(mode)
    if has('nvim') || has('gui_running')
        return
    endif
    function! s:metacode(mode, key)
        if a:mode == 0
            exec "set <M-".a:key.">=\e".a:key
        else
            exec "set <M-".a:key.">=\e]{0}".a:key."~"
        endif
    endfunc
    for i in range(10)
        call s:metacode(a:mode, nr2char(char2nr('0') + i))
    endfor
    for i in range(26)
        call s:metacode(a:mode, nr2char(char2nr('a') + i))
        call s:metacode(a:mode, nr2char(char2nr('A') + i))
    endfor
    if a:mode != 0
        for c in [',', '.', '/', ';', '[', ']', '{', '}']
            call s:metacode(a:mode, c)
        endfor
        for c in ['?', ':', '-', '_']
            call s:metacode(a:mode, c)
        endfor
    else
        for c in [',', '.', '/', ';', '{', '}']
            call s:metacode(a:mode, c)
        endfor
        for c in ['?', ':', '-', '_']
            call s:metacode(a:mode, c)
        endfor
    endif
    set ttimeout
    if $TMUX != ''
        set ttimeoutlen=30
    elseif &ttimeoutlen > 80 || &ttimeoutlen <= 0
        set ttimeoutlen=80
    endif
endfunc

call Terminal_MetaMode(0)

noremap <silent><tab>m :tabnew<cr>
noremap <silent><tab>e :tabclose<cr>
noremap <silent><tab>n :tabn<cr>
noremap <silent><tab>p :tabp<cr>
noremap <silent><leader>t :tabnew<cr>
noremap <silent><leader>g :tabclose<cr>
noremap <silent><leader>1 :tabn 1<cr>
noremap <silent><leader>2 :tabn 2<cr>
noremap <silent><leader>3 :tabn 3<cr>
noremap <silent><leader>4 :tabn 4<cr>
noremap <silent><leader>5 :tabn 5<cr>
noremap <silent><leader>6 :tabn 6<cr>
noremap <silent><leader>7 :tabn 7<cr>
noremap <silent><leader>8 :tabn 8<cr>
noremap <silent><leader>9 :tabn 9<cr>
noremap <silent><leader>0 :tabn 10<cr>
noremap <silent><s-tab> :tabnext<CR>
inoremap <silent><s-tab> <ESC>:tabnext<CR>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Plugin Setting
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


"""""""""""""""" gutentags
" https://www.zhihu.com/question/47691414/answer/373700711
" gutentags 搜索工程目录的标志，碰到这些文件/目录名就停止向上一级目录递归
let g:gutentags_project_root = ['.root', '.svn', '.git', '.hg', '.project']

" 所生成的数据文件的名称
let g:gutentags_ctags_tagfile = '.tags'

" 将自动生成的 tags 文件全部放入 ~/.cache/tags 目录中，避免污染工程目录
let s:vim_tags = expand('~/.cache/tags')
let g:gutentags_cache_dir = s:vim_tags

" 配置 ctags 的参数
let g:gutentags_ctags_extra_args = ['--fields=+niazS', '--extra=+q']
let g:gutentags_ctags_extra_args += ['--c++-kinds=+px']
let g:gutentags_ctags_extra_args += ['--c-kinds=+px']

" 检测 ~/.cache/tags 不存在就新建
if !isdirectory(s:vim_tags)
   silent! call mkdir(s:vim_tags, 'p')
endif


"""""""""""""""" asyncrun
" 自动打开 quickfix window ，高度为 6
let g:asyncrun_open = 6

" 任务结束时候响铃提醒
let g:asyncrun_bell = 1

let g:asyncrun_rootmarks = ['.svn', '.git', '.root', '_darcs', 'build.xml']

"""" Asyncrun
" F4：使用 cmake 生成 Makefile
" F5：单文件：运行
" F6：项目：测试 " F7：项目：编译
" F8：项目：运行
" F9：单文件：编译
" F10：打开/关闭底部的 quickfix 窗口

nnoremap <silent> <F9> :AsyncRun gcc -Wall -O2 "$(VIM_FILEPATH)" -o "$(VIM_FILEDIR)/$(VIM_FILENOEXT)" <cr>
nnoremap <silent> <F5> :AsyncRun -raw -cwd=$(VIM_FILEDIR) "$(VIM_FILEDIR)/$(VIM_FILENOEXT)" <cr>
nnoremap <silent> <F7> :AsyncRun -cwd=<root> make <cr>
nnoremap <silent> <F8> :AsyncRun -cwd=<root> -raw make run <cr>
nnoremap <silent> <F6> :AsyncRun -cwd=<root> -raw make test <cr>
nnoremap <silent> <F4> :AsyncRun -cwd=<root> cmake .. <cr>
nnoremap <F10> :call asyncrun#quickfix_toggle(6)<cr>



"""""""""""""""" ale
let g:ale_linters = {
\   'c': ['gcc, cppcheck'],
\   'cpp': ['gcc, cppcheck'],
\}

let g:ale_linters_explicit = 1
let g:ale_completion_delay = 500
let g:ale_echo_delay = 20
let g:ale_lint_delay = 500
let g:ale_echo_msg_format = '[%linter%] %code: %%s'
let g:ale_lint_on_text_changed = 'normal'
let g:ale_lint_on_insert_leave = 1
let g:airline#extensions#ale#enabled = 1

let g:ale_c_gcc_options = '-Wall -O2 -std=c99'
let g:ale_cpp_gcc_options = '-Wall -O2 -std=c++11'
let g:ale_c_cppcheck_options = ''
let g:ale_cpp_cppcheck_options = ''

let g:ale_sign_error = "\ue009\ue009"
hi! clear SpellBad
hi! clear SpellCap
hi! clear SpellRare
hi! SpellBad gui=undercurl guisp=red
hi! SpellCap gui=undercurl guisp=blue
hi! SpellRare gui=undercurl guisp=magenta

"""""""""""""""" YCM
let g:ycm_add_preview_to_completeopt = 0
let g:ycm_show_diagnostics_ui = 0
let g:ycm_server_log_level = 'info'
let g:ycm_min_num_identifier_candidate_chars = 2
let g:ycm_collect_identifiers_from_comments_and_strings = 1
let g:ycm_complete_in_strings=1
let g:ycm_key_invoke_completion = '<c-space>'
let g:ycm_seed_identifiers_with_syntax=1    " 语法关键字补全
let g:ycm_confirm_extra_conf=0
let g:ycm_global_ycm_extra_conf = '~/.ycm_extra_conf.py'
let g:ycm_confirm_extra_conf=0
let g:ycm_log_level='debug'
set completeopt=menu,menuone
"回车即选中当前项
inoremap <expr> <CR>  pumvisible() ? "\<C-y>" : "\<CR>"
"set completeopt=longest,menu
"让Vim的补全菜单行为与一般IDE一致(参考VimTip1228)"

noremap <c-z> <NOP>

let g:ycm_semantic_triggers =  {
           \ 'c,cpp,python,java,go,erlang,perl': ['re!\w{2}'],
           \ 'cs,lua,javascript': ['re!\w{2}'],
           \ }

""""""""""""""""  Airline & theme
" 使用powerline打过补丁的字体
let g:airline_powerline_fonts = 1
" let g:airline_theme='base16_solarized'
" let g:airline_theme='base16_chalk'
let g:airline_theme='base16_ashes'
let g:airline#extensions#tabline#enabled = 1
 " let g:airline#extensions#tabline#buffer_nr_show = 1
let g:airline#extensions#tabline#buffer_min_count = 2

"""""""""""""""" Rainbow
au VimEnter * RainbowParenthesesToggle
au Syntax * RainbowParenthesesLoadRound
au Syntax * RainbowParenthesesLoadSquare
au Syntax * RainbowParenthesesLoadBraces

colorscheme molokai
let g:rbpt_colorpairs = [
    \ ['brown',       'RoyalBlue3'],
    \ ['Darkblue',    'SeaGreen3'],
    \ ['darkgray',    'DarkOrchid3'],
    \ ['darkgreen',   'firebrick3'],
    \ ['darkcyan',    'RoyalBlue3'],
    \ ['darkred',     'SeaGreen3'],
    \ ['darkmagenta', 'DarkOrchid3'],
    \ ['brown',       'firebrick3'],
    \ ['gray',        'RoyalBlue3'],
    \ ['black',       'SeaGreen3'],
    \ ['darkmagenta', 'DarkOrchid3'],
    \ ['Darkblue',    'firebrick3'],
    \ ['darkgreen',   'RoyalBlue3'],
    \ ['darkcyan',    'SeaGreen3'],
    \ ['darkred',     'DarkOrchid3'],
    \ ['red',         'firebrick3'],
    \ ]
let g:rbpt_max = 16
let g:rbpt_loadcmd_toggle = 0

"""""""""""""""" NerdCommenter
" 注释的时候自动加个空格, 强迫症必配
let g:NERDSpaceDelims=1

let g:cpp_class_decl_highlight = 1

"""""""""""""""" LeaderF
let g:Lf_ShortcutF = '<c-p>'
let g:Lf_ShortcutB = '<m-n>'
" let g:Lf_WindowPosition = 'right'
" let g:LeaderfFunction = '<m-n>'
noremap <c-n> :LeaderfMru<cr>
noremap <m-p> :LeaderfFunction<cr>
noremap <m-n> :LeaderfBuffer<cr>
noremap <m-m> :LeaderfTag<cr>
let g:Lf_StlSeparator = { 'left': '', 'right': '' }
let g:Lf_CommandMap = {'<C-]>': ['<C-V>']}

let g:Lf_RootMarkers = ['.project', '.root', '.svn', '.git']
let g:Lf_WorkingDirectoryMode = 'Ac'
let g:Lf_WindowHeight = 0.30
let g:Lf_CacheDirectory = expand('~/.vim/cache')
let g:Lf_ShowRelativePath = 1
let g:Lf_HideHelp = 1
let g:Lf_StlColorscheme = 'powerline'

let g:Lf_NormalMap = {
   \ "File":   [["<ESC>", ':exec g:Lf_py "fileExplManager.quit()"<CR>'],
   \            ["<F6>", ':exec g:Lf_py "fileExplManager.quit()"<CR>'] ],
   \ "Buffer": [["<ESC>", ':exec g:Lf_py "bufExplManager.quit()"<CR>'],
   \            ["<F6>", ':exec g:Lf_py "bufExplManager.quit()"<CR>'] ],
   \ "Mru":    [["<ESC>", ':exec g:Lf_py "mruExplManager.quit()"<CR>']],
   \ "Tag":    [["<ESC>", ':exec g:Lf_py "tagExplManager.quit()"<CR>']],
   \ "Function":    [["<ESC>", ':exec g:Lf_py "functionExplManager.quit()"<CR>']],
   \ "Colorscheme":    [["<ESC>", ':exec g:Lf_py "colorschemeExplManager.quit()"<CR>']],
   \ }

" delete trailing white space
" autocmd BufEnter * EnableStripWhitespaceOnSave

let g:indentLine_color_term = 239
" let g:indentLine_char = '┊'
"
"Q. I don't see quotes in JSON.
"
" autocmd Filetype json let g:indentLine_setConceal = 0
let g:vim_json_syntax_conceal = 0
" let g:indentLine_setConceal = 0

let Tlist_Sort_Type = "name"    " 按照名称排序  
let Tlist_Use_Right_Window = 1  " 在右侧显示窗口  
let Tlist_Compart_Format = 1    " 压缩方式  
let Tlist_Exist_OnlyWindow = 1  " 如果只有一个buffer，kill窗口也kill掉buffer  
let Tlist_File_Fold_Auto_Close = 0  " 不要关闭其他文件的tags  
let Tlist_Enable_Fold_Column = 0    " 不要显示折叠树  
set tags=tags  
let Tlist_Auto_Open=1 
let Tlist_Ctags_Cmd = '/usr/bin/ctags' 
let Tlist_Show_One_File = 1 "不同时显示多个文件的tag，只显示当前文件的 
let Tlist_Exit_OnlyWindow = 1 "如果taglist窗口是最后一个窗口，则退出vim 
let Tlist_Use_Right_Window = 1 "在右侧窗口中显示taglist窗口

let g:miniBufExplMapWindowNavVim = 1
let g:miniBufExplMapWindowNavArrows = 1
let g:miniBufExplMapCTabSwitchBufs = 1
let g:miniBufExplModSelTarget = 1

set completeopt=menu,menuone " 关掉智能补全时的预览窗口
let OmniCpp_MayCompleteDot = 1 " autocomplete with .
let OmniCpp_MayCompleteArrow = 1 " autocomplete with ->
let OmniCpp_MayCompleteScope = 1 " autocomplete with ::
let OmniCpp_SelectFirstItem = 2 " select first item (but don't insert)
let OmniCpp_NamespaceSearch = 2 " search namespaces in this and included files
let OmniCpp_ShowPrototypeInAbbr = 1 " show function prototype in popup window
let OmniCpp_GlobalScopeSearch=1 " enable the global scope search
let OmniCpp_DisplayMode=1 " Class scope completion mode: always show all members
    "let OmniCpp_DefaultNamespaces=["std"]
let OmniCpp_ShowScopeInAbbr=1 " show scope in abbreviation and remove the last column
let OmniCpp_ShowAccess=1
" Signify
let g:signify_vcs_list = [ 'git', 'svn' ]
let g:signify_sign_change = '~'

let $PATH='$HOME/.cargo/bin:/usr/bin:/usr/local/bin:/bin:/usr/sbin:/sbin'
let g:pymode_python = 'python3'
let g:pymode_rope_lookup_project = 0
let g:pymode_rope = 0

set autochdir 

" Functions
augroup HelpInTabs
    autocmd!
    autocmd BufEnter *.txt call HelpInNewTab()
augroup end

function! HelpInNewTab ()
    if &buftype == 'help'
        "Convert help window to vsplit
        execute "normal \<C-W>T"
    endif
endfunction
