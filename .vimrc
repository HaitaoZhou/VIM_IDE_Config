set nocompatible               " be iMproved
filetype off                   " required!       /**  从这行开始，vimrc配置 **/

" vundle {
set rtp+=~/.vim/bundle/vundle/
" 如果在windows下使用的话，设置为
" set rtp+=$HOME/.vim/bundle/vundle/
call vundle#rc()
" }
"
" let Vundle manage Vundle
" required!
Bundle 'gmarik/vundle'
  
" My Bundles here:
"
" original repos on github
" github上的用户写的插件，使用这种用户名+repo名称的方式
" Bundle 'tpope/vim-fugitive'
" Bundle 'Lokaltog/vim-easymotion'
" Bundle 'rstacruz/sparkup', {'rtp': 'vim/'}
" Bundle 'tpope/vim-rails.git'

" vim-scripts repos
" vimscripts的repo使用下面的格式，直接是插件名称
Bundle 'taglist.vim'
Bundle 'SuperTab'
" Bundle 'vimwiki'
Bundle 'winmanager'
" Bundle 'bufexplorer.zip'
" Bundle 'The-NERD-tree'
" Bundle 'matrix.vim--Yang'
" Bundle 'FencView.vim'
" Bundle 'Conque-Shell'
" Bundle 'Vimpress'
" Bundle 'Markdown'
" Bundle 'LaTeX-Suite-aka-Vim-LaTeX'
Bundle 'c.vim'
Bundle 'snipMate'
Bundle 'ctags.vim'
Bundle 'minibufexpl.vim'
Bundle 'Valloric/YouCompleteMe'  
Bundle 'scrooloose/syntastic'

" non github reposo
" 非github的插件，可以直接使用其git地址
"
" Bundle 'git://git.wincent.com/command-t.git'
" ...

filetype plugin indent on     " required!   /** vimrc文件配置结束 **/
"                                           /** vundle命令 **/

" Brief help
" :BundleList          - list configured bundles
" :BundleInstall(!)    - install(update) bundles
" :BundleSearch(!) foo - search(or refresh cache first) for foo
" :BundleClean(!)      - confirm(or auto-approve) removal of unused bundles
" vundle主要就是上面这个四个命令，例如BundleInstall是全部重新安装，BundleInstall!则是更新
" 一般安装插件的流程为，先BundleSearch一个插件，然后在列表中选中，按i安装
" 安装完之后，在vimrc中，添加Bundle 'XXX'，使得bundle能够加载，这个插件，同时如果
" 需要配置这个插件，也是在vimrc中设置即可
" see :h vundle for more details or wiki for FAQ
" NOTE: comments after Bundle command are not allowed..
"



" Vim Setting
set nu
set tabstop=4
set shiftwidth=4
set hlsearch
set incsearch
syntax enable
syntax on
colorscheme desert
set nobackup
set autoread

" Plugin Setting
let Tlist_Show_One_File=1
let Tlist_Exit_OnlyWindow=1

let g:miniBufExplorerMoreThanOne=0

set tags=tags; 
set autochdir

let g:winManagerWindowLayout='FileExplorer|TagList' " 设置窗口布局
let g:winManagerWidth = 30
map <F12> :WMToggle<cr>
imap <F12> <esc><f12>a

map <F5> :!ctags -R --c++-kinds=+p --fields=+iaS --extra=+q .<CR><CR> :TlistUpdate<CR>
imap <F5> <ESC>:!ctags -R --c++-kinds=+p --fields=+iaS --extra=+q .<CR><CR> :TlistUpdate<CR>

" YouCompleteMe 功能
" 补全功能在注释中同样有效
let g:ycm_complete_in_comments=1
" 允许 vim 加载 .ycm_extra_conf.py 文件，不再提示
let g:ycm_confirm_extra_conf=0
" 开启 YCM 基于标签引擎
let g:ycm_collect_identifiers_from_tags_files=1
" YCM 集成 OmniCppComplete 补全引擎，设置其快捷键
inoremap <leader>; <C-x><C-o>
" 补全内容不以分割子窗口形式出现，只显示补全列表
set completeopt-=preview
" 从第一个键入字符就开始罗列匹配项
let g:ycm_min_num_of_chars_for_completion=1
" 禁止缓存匹配项，每次都重新生成匹配项
let g:ycm_cache_omnifunc=0
" 语法关键字补全           
let g:ycm_seed_identifiers_with_syntax=1
" 修改对C函数的补全快捷键，默认是CTRL + space，修改为ALT + ;
let g:ycm_key_invoke_completion = '<M-;>'
" 设置转到定义处的快捷键为ALT + G，这个功能非常赞
nmap <M-g> :YcmCompleter GoToDefinitionElseDeclaration <C-R>=expand("<cword>")<CR><CR>
"let g:ycm_key_list_select_completion=['<c-n>']
let g:ycm_key_list_select_completion = ['<Down>']
"let g:ycm_key_list_previous_completion=['<c-p>']
let g:ycm_key_list_previous_completion = ['<Up>']
let g:ycm_global_ycm_extra_conf = '/root/.vim/bundle/YouCompleteMe/third_party/ycmd/cpp/ycm/.ycm_extra_conf.py'

""""""""""syntastic""""""""""""  
let g:syntastic_check_on_open = 1  
let g:syntastic_cpp_include_dirs = ['/usr/include/']  
let g:syntastic_cpp_remove_include_errors = 1  
let g:syntastic_cpp_check_header = 1  
let g:syntastic_cpp_compiler = 'clang++'  
"set error or warning signs  
let g:syntastic_error_symbol = 'x'  
let g:syntastic_warning_symbol = '!'  
"whether to show balloons  
let g:syntastic_enable_balloons = 1

" 映射quickfix
nmap <F7> :cp<cr>
nmap <F8> :cn<cr>
nmap <F6> :vimgrep /<c-r>=expand("<cword>")<cr>/ %<cr>:cw<cr>
