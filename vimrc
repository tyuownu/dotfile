"--------------------------------------------------
" Author: tyuownu                                 |
" Email: tyuownu@gmail.com                        |
"--------------------------------------------------

"--------------------------------------------------
" Vundle manage                                   |
"--------------------------------------------------
set nocompatible " 设置vim为不兼容vi模式
" filetype off     " required

set rtp+=~/.vim/bundle/vundle
" 如果在windows下使用,
" set rtp+=$HOME/.vim/bundle/vundle
call vundle#rc()

" let Vundle manage Vundle, required
Bundle 'gmarik/vundle'

" original repos on github
Bundle 'tpope/vim-fugitive'
Bundle 'Yggdroot/indentLine'
"let g:indentLine_char = '┊'

Bundle 'godlygeek/tabular'

" Markdown-relative
Bundle 'plasticboy/vim-markdown'
au BufRead,BufNewFile *.{md,mdown,mkd,mkdn,markdown,mdwn} set filetype=mkd

Bundle 'vim-scripts/Auto-Pairs'
Bundle 'scrooloose/nerdtree'
Bundle 'vim-scripts/taglist.vim'
" 主要是快速网页编辑的.
Bundle 'vim-scripts/ZenCoding.vim'
Bundle 'vim-scripts/xml.vim'
Bundle 'vim-scripts/molokai'
Bundle 'altercation/vim-colors-solarized'

" 后面再来研究这个powerline   airline
Bundle 'Lokaltog/vim-powerline'
let g:Powerline_symbols='unicode'

" Bundle 'Valloric/YouCompleteMe'
" 安装过程(vim >= 7.3.584  clang >= 3.2)
" 1. 下载clang+llvm     llvm.org/releases/download.html
" 2. 解压到$HOME目录
" 3. mkdir ~/ycm_build
"    cd ~ycm_build
" 4. cmake -G "Unix Makefiles" -DEXTERNAL_LIBCLANG_PATH=~/clang+llvm-path/ . ~/.vim/bundle/YouCompleteMe/third_party/ycmd/cpp
" 5. make ycm_support_libs
" YCM-relative
"let g:ycm_seed_indentifiers_with_syntax=1
"let g:ycm_global_ycm_extra_conf='~/.vim/.ycm_extra_conf.py'
"let g:ycm_confirm_extra_conf=0
"let g:ycm_collect_indentifiers_from_tag_files=1
"set completeopt=longest,menu

Bundle 'Valloric/ListToggle'
Bundle 'scrooloose/syntastic'
Bundle 'vim-scripts/bufexplorer.zip'
Bundle 'vim-scripts/minibufexplorerpp'
Bundle 'tpope/vim-commentary'
Bundle 'tpope/vim-surround'
Bundle 'terryma/vim-expand-region'
Bundle 'scrooloose/nerdcommenter'
Bundle 'terryma/vim-multiple-cursors'



" 其他补全库的依赖库，L9 library

" 非github插件
" Bundle 'git://git.wincent.com/command-t.git'

" vim-scripts仓库里的，按下面格式填写
" Bundle 'L9'
Bundle 'L9'
Bundle 'supertab'
let g:SuperTabRetainCompletionType=2

Bundle 'omnicppcomplete'
""let g:SuperTabDefaultCompletionType="<C-x><C-u>"
"   vundle 命令
" :BundleList   
" :BundleInstall(!)    - install (update) bundles
" :BundleSearch(!) foo - search (or refresh cache first) for foo
" :BundleClean(!)      - confirm(or auto-approve) removal of unused bundles

"-----------------------------------------------------
" End Vundle                                         |
"-----------------------------------------------------

"---
" basic setting                                      |
"-----------------------------------------------------
" filetype plugin indent on "required 启用自动补全
set nrformats=                  " Vim设置成十进制
set tabstop=4                   " Tab宽度
"set expandtab                   " or set et. 和空格之间联系．
set shiftwidth=2                " 程序中自动缩进所使用的空白长度
set number                      " 显示行号
set autoindent                  " 自动缩进．自动对齐.就是当按O时，或按照上面的缩进去缩进
set cindent shiftwidth=4        " C语言语法.
set showmatch                   " 显示括号配对情况
set mouse=a                     " 启用鼠标
set mousemodel=popup            " 当右键单击窗口的时候，弹出快捷菜单.
set ruler                       " 右下角显示光标位置的状态行
set incsearch                   " 开启实时搜索功能
set hlsearch                    " 高亮显示结果
set ignorecase                  " 忽略大小写
set nowrapscan                  " 搜索到文件两端时不重新搜索
set vb t_vb=                    " 关闭提示音
set cursorline                  " 突出显示当前行
"set cuc                         " 高亮当前列
set so=2                        " 光标在窗口上下边界时距离边界3行即开始滚屏

set list
set listchars=tab:\|\ ,         " 显示tab,用|代替
set showcmd                     " 输入的命令显示出来，看的清楚点

set selection=inclusive         " 光标当前的位置也可以被选中

set writebackup                 " 无备份文件
set nobackup                    " 取消备份
set autochdir                   " 文件浏览器目录为当前目录
set nowrap                      " 设置不自动换行
set foldmethod=syntax           " 设置代码折叠类型
set foldlevel=100               " 禁止自动折叠
set laststatus=2                " 开启状态栏信息
"set statusline=%F%m%r%h%w\ [FORMAT=%{&ff}]\ [TYPE=%Y]\ [POS=%l,%v][%p%%]\ %{strftime(\"%d/%m/%y\ -\ %H:%M\")}   "状态行显示的内容  

set history=1000
" to be continue
highlight StatusLine guifg=SlateBlue guibg=Yellow
highlight StatusLineNC guifg=Gray guibg=White
" set cmdheight=2                 " 命令行高度,默认1

set fenc=utf-8                  " 
set encoding=utf-8
set fileencodings=utf-8,gbk,cp936,latin-1

syntax enable                   " 语法高亮
syntax on                       " 文件类型
filetype indent on              " 不同的文件采用不同的缩进
filetype plugin on              " 不同文件加载对应插件

set wrap                        " 自动折行
set wildmenu                    " 自动补全命令时候使用菜单式匹配列表

" 引号和括号自动匹配
:inoremap ( ()<ESC>i
:inoremap ) <c-r>=ClosePair(')')<CR>
:inoremap { {}<ESC>i
:inoremap } <c-r>=ClosePair('}']<CR>
:inoremap [ []<ESC>i
:inoremap ] <c-r>=ClosePair(']')<CR>
:inoremap " ""<ESC>i
:inoremap ' ''<ESC>i
:inoremap ` ``<ESC>i
:imap <F4> <ESC>la

function ClosePair(char)
  if getline('.')[col('.')-1] == a:char
    return "\<Right>"
  else
    return a:char
  endif
endf

" MiniBufExplorer               多个文件切换,可以使用鼠标双击
let g:miniBufExplMapWindowNavVim=1
let g:miniBufExplMapWindowNavArrows=1
let g:miniBufExplMapCTabSwitchBufs=1
let g:miniBufExplModSelTarget=1
let g:miniBufExplorerMoreThanOne=0

let g:winManagerWindowLayout='FileExplorer|TagList'
let g:winManagerWidth=30                   " 设置Winmanager宽度，默认25

" 新建.c, .cpp, .sh文件自动插入文件头
autocmd BufNewFile *.cpp,*.[ch],*.sh,*.py exec ":call SetTitle()"
" SetTitle函数
function SetTitle()
  if &filetype == 'sh'
    call setline(1,"\#!/bin/bash")
    call append(line("."),"")
  elseif &filetype == 'python'
    call setline(1,"#!/usr/bin/env python")
    call append(line("."),"# coding=utf-8")
    call append(line(".")+1, "")
    call append(line(".")+2, "#-----------------------------------------")
    call append(line(".")+3, "#   >File Name: ".expand("%"))
    call append(line(".")+4, "#   > Main: tyuownu@gmail.com")
    call append(line(".")+5, "#-----------------------------------------")
    call append(line(".")+6, "")
  else
    call setline(1, "/*************************************************************************") 
    call append(line("."), "    > File Name: ".expand("%")) 
    call append(line(".")+1, "    > Author: tyu") 
    call append(line(".")+2, "    > Mail: tyuownu@gmail.com") 
    call append(line(".")+3, "    > Created Time: ".strftime("%d/%m/%Y - %H:%M:%S")) 
    call append(line(".")+4, " ************************************************************************/") 
    call append(line(".")+5, "")
  endif
  if expand("%:e") == 'cpp'
    call append(line(".")+6, "#include <iostream>")
    call append(line(".")+7, "using namespace std;")
    call append(line(".")+8, "")
  endif
  if &filetype == 'c'
    call append(line(".")+6, "#include<stdio.h>")
    call append(line(".")+7, "")
  endif
  if expand("%:e") == 'h'
    call append(line(".")+6, "#ifndef _".toupper(expand("%:r"))."_H")
    call append(line(".")+7, "#define _".toupper(expand("%:r"))."_H")
    call append(line(".")+8, "#endif")
  endif
endfunc 

" 新建完后自动定位到文件末尾
autocmd BufNewFile * normal G


"代码格式优化化
map <F6> :call FormartSrc()<CR><CR>

"定义FormartSrc()
func FormartSrc()
  exec "w"
  if &filetype == 'c'
    exec "!astyle --style=ansi -a --suffix=none %"
  elseif &filetype == 'cpp' || &filetype == 'hpp'
    exec "r !astyle --style=ansi --one-line=keep-statements -a --suffix=none %> /dev/null 2>&1"
  elseif &filetype == 'py'||&filetype == 'python'
    exec "r !autopep8 -i --aggressive %"
  elseif &filetype == 'xml'
    exec "!astyle --style=gnu --suffix=none %"
  else
    exec "normal gg=G"
    return
  endif
  exec "e! %"
endfunc
"结束定义FormartSrc
"-----------------------------------------------------
" end basic                                          |
"-----------------------------------------------------

"-----------------------------------------------------
" gui font and color scheme                          |
"-----------------------------------------------------
if has("gui_gtk2")
  set guifont=DejaVu\ Sans\ Mono\ 12
elseif has("gui_macvim")
  set guifont=DejaVu_Sans_Mono:h10
elseif has("gui_win32")
  set guifont=DejaVu_Sans_Mono:h10
endif

if has('gui_running')
  set t_Co=256
  let g:solarized_termcolors=256
  colorscheme solarized
  set background=dark
"else
  "set background=dark
  "colorscheme solarized  " molokai主要这两种,其他慢慢添加
  "    colorscheme molokai
endif

" 设置gui窗口显示
set guioptions-=m
set guioptions-=T
" <F2> to show or hide the bar
map <silent> <F2> :if &guioptions =~# 'T'<Bar>
      \set guioptions-=T <Bar>
      \set guioptions-=m <Bar>
      \else <Bar>
      \set guioptions+=T <Bar>
      \set guioptions+=m <Bar>
      \endif<CR>
"-----------------------------------------------------
" end gui font and color scheme                      |
"-----------------------------------------------------


"-----------------------------------------------------
" TList                                              |
"-----------------------------------------------------
let Tlist_Show_One_File=1                     " 只显示当前文件的tags
let Tlist_Exit_OnlyWindow=1                   " 如果Taglist是最后一个窗口，关闭vim
let Tlist_Use_Right_Window=1                  " 在右侧窗口显示
let Tlist_File_Fold_Auto_Close=1              " 自动折叠
let Tlist_Auto_Highlight_tag=1                " 高亮显示
let Tlist_WinWidth= 25                        " 设置宽度
let Tlist_Use_SingClick=1                     " 单机跳转
let Tlist_Auto_Open=0                         " 默认打开Taglist

" 打开NERDTree
map nt :NERDTree<CR>

" 打开Taglist
map tl :Tlist<CR><c-l>

let NERDTreeAutoCenter=1                      " 自动调节焦点
let NERDTreeQuitOnOpen=1
let NERDTreeWinSize=25
let NERDTreeIgnore=['\.pyc']
" 列出当前目录文件
map <F3> :NERDTreeToggle<CR>
imap <F3> <ESC> :NERDTreeToggle<CR>
" 当打开vim且没有文件时自动打开NERDTree
autocmd vimenter * if !argc() | NERDTree | endif
" 只剩NERDTree时自动关闭
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif
"-----------------------------------------------------
" end TList                                          |
"-----------------------------------------------------


"-----------------------------------------------------
" some maps                                          |
"-----------------------------------------------------

" c-j  保存文件并留在插入模式[插入模式]
imap <c-j> <ESC>:w<CR>li

" 返回Normal模式[插入模式]
imap <c-k> <ESC>l

" 保存退出vim[插入模式]
inoremap <c-l> <ESC>:wqa<CR>      

map ]] :tnext<CR>
" bash ~/.profile
map BA :!bash ~/.profile<CR><CR>
" 将tab替换为空格
" nmap tt :%s/\t/    /g<CR>
" Ctrl+c 复制
vmap <C-c> "+y


map vv %%l
imap vv <ESC>%%a

map hex :%!xxd<CR>


"-----------------------------------------------------
" some maps                                          |
"-----------------------------------------------------

"-----------------------------------------------------
" ctags & Taglist                                    |
"-----------------------------------------------------
" let g:Tlist_Ctags_Cmd='/home/tyu/ctags-5.5/ctags'
set tags+=tags;
map <C-F12> :!ctags -R -I --c++-kinds=+p --fields=+iaS --extra=+q .<CR>

"-----------------------------------------------------
" end ctags & Taglist                                |
"-----------------------------------------------------


"-----------------------------------------------------
" for ROS                                            |
"-----------------------------------------------------
au BufRead,BufNewFile *.{launch, urdf, xacro} set filetype=xml

"-----------------------------------------------------
" end for ROS                                        |
"-----------------------------------------------------
