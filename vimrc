" Vundle {

    " All of your Plugins must be added before the following line
    " To ignore plugin indent changes, instead use:
    "filetype plugin on
    "
    " Brief help
    " :PluginList       - lists configured plugins
    " :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
    " :PluginSearch foo - searches for foo; append `!` to refresh local cache
    " :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
    "
    " see :h vundle for more details or wiki for FAQ
    " Put your non-Plugin stuff after this line
    """"""""""""""""""""""""""""""""""""""""""""""""""
    set nocompatible              " be iMproved, required
    filetype off                  " required
    "  the runtime path to include Vundle and initialize

    set rtp+=~/.vim/bundle/Vundle.vim
    call vundle#begin()

    Plugin 'gmarik/Vundle.vim'            " 必须安装
    Plugin 'SirVer/ultisnips'             " Track the engine.
    Plugin 'honza/vim-snippets'           " Snippets are separated from the engine. Add this if you want them: Plugin 'unite.vim'
    Plugin 'kien/rainbow_parentheses.vim' " 括号增强,彩色
    Plugin 'trailing-whitespace'          " 增加尾部空格的显示
    Plugin 'commentary.vim'               " 注释多行
    Plugin 'surround.vim'                 " 补全括号或引号等cs,ds,yss

    " wm界面
    Plugin 'The-NERD-tree'
    Plugin 'minibufexpl.vim'              " buffer插件
    Plugin 'ctags.vim'

    Plugin 'timestamp.vim'                " 插入最后修改时间
    Plugin 'plasticboy/vim-markdown'      " Markdown格式高亮
    Plugin 'flazz/vim-colorschemes'
    Plugin 'molokai'                      " 配色
    Plugin 'vim-colors-solarized'
    Plugin 'Tabular'                      " 注释等格式对齐插件
    Plugin 'mru.vim'                      " 历史文件
    Plugin 'ctrlp.vim'                    " 文件搜寻
    Plugin 'Easymotion'                   " 文件快速定位
    Plugin 'pydoc.vim'                    " python文档
    Plugin 'Smooth-Scroll'                " 平滑滚动
    Plugin 'bling/vim-airline'            " 状态栏
    Plugin 'fugitive.vim'                 " git插件
    Plugin 'Gist.vim'                     " gist
    Plugin 'airblade/vim-gitgutter'       " git diff
    Plugin 'WebAPI.vim'                   " gist依赖插件
    Plugin 'Tagbar'                       " 代替taglist
    Plugin 'Valloric/YouCompleteMe'       " 补全插件
    " Plugin 'pyflakes.vim'                 " python语法检测
    " Plugin 'mattn/emmet-vim'              " Zencoding
    " Plugin 'Pydiction'                    " python自动补全
    " Plugin 'bufexplorer.zip'              " 打开历史文件 :BufExplorer
    " Plugin 'OmniCppComplete'              " c/c++补全
    " Plugin 'Syntastic'                    " 语法检查

    call vundle#end()            " required
    filetype plugin indent on    " required

" }


" General {

    set autowrite                  " 自动保存
    set mouse=a                    " 鼠标支持
    filetype plugin on             " 允许插件
    set helplang=cn                " 中文文档
    set nobackup                   " 从不备份
    set undodir=~/.undodir
    "set whichwrap+=<,>,h,l         " 退格和方向可以换行

    set mouse=n                    " 所有模式使用鼠标
    set matchtime=1                " 匹配括号高亮的时间（单位是十分之一秒）
    let &termencoding=&encoding    " 中文设置
    set fileencodings=utf-8,gbk    " 中文设置
    set foldmethod=indent          " 代码折叠 indent

    "设置 退出vim后，内容显示在终端屏幕, 可以用于查看和复制,好处：误删什么的，如果以前屏幕打开，可以找回
    set t_ti= t_te=

    "tab切换页面
    set hidden "in order to switch between buffers with unsaved change
    map <s-tab> :bp<cr>
    map <tab> :bn<cr>

    " 插入模式下用绝对行号, 普通模式下用相对
    autocmd InsertEnter * :set norelativenumber number
    autocmd InsertLeave * :set relativenumber

    "断行
    " set columns=80
    " set tw=80
    " set fo+=Mm

    " set fillchars=vert:\ ,stl:\ ,stlnc:\ " 在被分割的窗口间显示空白，便于阅读
    "map <C-A> ggVG"+y
    autocmd! bufwritepost .vimrc source % " vimrc文件修改之后自动加载。 linux。
    set modifiable

" }

" vim-UI {

    syntax enable                  " 语法高亮
    set background=dark

    " colorsheme solarized {
        let g:solarized_termtrans=1
        let g:solarized_contrast="normal"
        let g:solarized_visibility="normal"
    " }

    " molokai {
        "let g:molokai_original = 1
        "let g:rehash256 = 1
    " }

    colorscheme solarized           " molokai zenburn Tomorrow

    highlight Normal ctermbg=NONE
    highlight nonText ctermbg=NONE

    set cursorline                 " 突出显示当前行
    set cursorcolumn               " 突出显示当前列
    set relativenumber             " 设置相对行号
    set ruler                      " 显示ruler
    set linespace=0                " 行之间没有多余空格
    set nu                         " 显示行号
    set showmatch                  " 高亮显示匹配的括号
    set incsearch                  " 跟踪搜索
    set hlsearch                   " 高亮搜索
    set ignorecase                 " 搜索忽略大小写
    set wildmenu                   " 输入vim命令时补全菜单
    set wildmode=list:longest,full " 输入Tab时,先列出符合的,再列出最长匹配,最后是全部
    set scrolljump=5               " 光标离开屏幕滑动距离
    set scrolloff=3                " 滑动时离上下行最短距离
    set foldenable                 " 自动折叠
    set ai                         " 自动缩进
    set si                         " 只能缩进
    set cindent                    " c/c++风格
    set backspace=eol,start,indent
    " set list                       " 把制表符显示为^I,用$标示行尾

" }

" Formatting {

    set nowrap                      " 控制长行是否折到下一行显示
    set autoindent                  " 把当前行的对起格式应用到下一行
    set shiftwidth=4                " 缩进用4个空格表示
    set expandtab                   " 用空格代替tab
    set tabstop=4                   " 一个tab相当于4个空格
    set smarttab
    set softtabstop=4               " backspace可以删除缩进
    set nojoinspaces                "用J命令合并两行时会用一个空格来分隔

" }

" Key (re)Mappings {

    " <F2> 去空行 {
        nnoremap <F2> :g/^\s*$/d<CR>
    " }

    " <F3> 删除多余空格 {
        map <F3> :%s/\s\+$//<CR>
    " }

    " <F4> 相对和绝对行号切换 {
        nnoremap <F4> :call NumberToggle()<cr>
        function! NumberToggle()
          if(&relativenumber == 1)
            set norelativenumber number
          else
            set relativenumber
          endif
        endfunc
    " }

    " <F5> 编译运行 {
        map <F5> :call CompileRunGcc()<CR>
        func! CompileRunGcc()
            exec "w"
            if &filetype == 'c'
                exec "!gcc % -o %<"
                exec "! ./%<"
            elseif &filetype == 'cpp'
                exec "!gcc % -o %<"
                exec "! ./%<"
            elseif &filetype == 'java'
                exec "!javac %"
                exec "!java %<"
            elseif &filetype == 'sh'
                :!./%
            elseif &filetype == 'python'
                exec "!python %"
            endif
        endfunc
    " }

    " <F8> C,C++的调试 {
        map <F8> :call Rungdb()<CR>
        func! Rungdb()
            exec "w"
            exec "!gcc % -g -o %<"
            exec "!gdb ./%<"
        endfunc
    " }

    " <F9> 粘贴不带缩进{
        set pastetoggle=<F9>
    " }

" Plugins {

    " ctrlp {
        let g:ctrlp_map = ',,'
        let g:ctrlp_open_multiple_files = 'v'

        set wildignore+=*/tmp/*,*.so,*.swp,*.zip
        let g:ctrlp_custom_ignore = {
          \ 'dir':  '\v[\/]\.(git)$',
          \ 'file': '\v\.(log|jpg|png|jpeg)$',
          \ }
    " }

    " MRU {
        map ,h :MRU<cr>
        let MRU_Max_Entries=50 " 记录条数
    "  }

    " ultisnips {
        " Trigger configuration. Do not use <tab> if you use https://github.com/Valloric/YouCompleteMe.
        let g:UltiSnipsExpandTrigger="<tab>"
        " let g:UltiSnipsJumpForwardTrigger="<c-b>"
        let g:UltiSnipsJumpBackwardTrigger="<c-z>"
        " If you want :UltiSnipsEdit to split your window.
        let g:UltiSnipsEditSplit="vertical"
    " }

    " commentary {
        "支持不同文件类型
        "gcc:注释一行
        "gc:可以注释多行,配合<C-v>
        autocmd FileType apache set commentstring=#\ %s
    " }

    " ranbow_parenthese.vim {
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
            \ ['darkred',     'DarkOrchid3'],
            \ ['darkcyan',    'SeaGreen3'],
            \ ['red',         'firebrick3'],
            \ ]
        let g:rbpt_max = 16
        let g:rbpt_loadcmd_toggle = 0
        "always on:
        au VimEnter * RainbowParenthesesToggle
        au Syntax * RainbowParenthesesLoadRound
        au Syntax * RainbowParenthesesLoadSquare
        au Syntax * RainbowParenthesesLoadBraces
    " }

    " minibuffexploer {
        "常用操作
        " :e <filename> 打开文件
        " :ls    当前打开的buf
        " :bn    下一个buf
        " :bp    前一个buf
        " :b<n>    n是数字，第n个buf
        " :b<tab>    自动补齐
        " :bd    删除
        let g:miniBufExplMapWindowNavVim = 1   "<C-h,j,k,l>切换到上下左右的窗口中去
        let g:miniBufExplMapWindowNavArrows = 1  "<C-箭头>箭头切换
        "let g:miniBufExplMapCTabSwitchBufs = 1   "<C-Tab>切换窗口(有冲突)
        "let g:miniBufExplModSelTarget = 1
        let g:miniBufExplMoreThanOne=0
    " }

    " NERDTree {
        let g:NERDTree_title="[NERDTree]"
        " let g:winManagerWindowLayout="NERDTree|TagList"
        " function! NERDTree_Start()
        "     exec 'NERDTree'
        " endfunction
        " function! NERDTree_IsValid()
        "     return 1
        " endfunction
        " nmap wm :WMToggle<CR>
    " }

    " Easymotion {
        let mapleader = "f"
        let g:EasyMotion_leader_key = 'f'
    " }

    " youcompleteme {
        " 屏蔽一些文件
        let g:ycm_filetype_blacklist = {
              \ 'tagbar' : 1,
              \ 'qf' : 1,
              \ 'notes' : 1,
              \ 'markdown' : 1,
              \ 'unite' : 1,
              \ 'text' : 1,
              \ 'vimwiki' : 1,
              \ 'gitcommit' : 1,
              \}
        " let g:ycm_global_ycm_extra_conf = '~/.ycm_extra_conf.py'
        let g:ycm_global_ycm_extra_conf = "~/.vim/bundle/YouCompleteMe/cpp/ycm/.ycm_extra_conf.py"
        " 超级有用文件跳转
        nnoremap <leader>jd :YcmCompleter GoToDefinitionElseDeclaration<CR>
        " let g:syntastic_always_populate_loc_list = 1
    " }

    " multiple-cursors-master {
        " Ctrl-n选择下一个相同的单词
        " Ctrl-p往回选一个
        " Ctrl-x则跳过下一个相同单词
    " }

    " vim-markdown {
        let g:vim_markdown_initial_foldlevel= 1
        let g:vim_markdown_folding_disabled=1 "去掉折叠
        let g:markdown_no_default_key_mappings=1 "默认键失效
    " }


    " LASTCHANGED {
        let timestamp_regexp = '\v\C%(<Last %([cC]hanged?|[Mm]odified):\s+)@<=.*$'
        set modelines=20
        let g:timestamp_rep = strftime("%c")
    " }

    " vim-expand-region {
        map <space> <Plug>(expand_region_expand)
        " 空格键映射到+
        " map J <Plug>(expand_region_shrink)
    " }

    " airline {
        let g:airline_theme="powerlineish" "powerlineish
        let g:airline_powerline_fonts=1
        set laststatus=2
        " let g:airline#extensions#tabline#enabled = 1
        " let g:airline#extensions#tabline#left_sep = ' '
        " let g:airline#extensions#tabline#left_alt_sep = '|'
    " }


    " tagbar {
        let g:tagbar_width = 30
        let g:tagbar_ctags_bin = 'ctags'

        function! ToggleNERDTreeAndTagbar()
            let w:jumpbacktohere = 1

            " Detect which plugins are open
            if exists('t:NERDTreeBufName')
                let nerdtree_open = bufwinnr(t:NERDTreeBufName) != -1
            else
                let nerdtree_open = 0
            endif
            let tagbar_open = bufwinnr('__Tagbar__') != -1

            " Perform the appropriate action
            if nerdtree_open && tagbar_open
                NERDTreeClose
                TagbarClose
            elseif nerdtree_open
                TagbarOpen
            elseif tagbar_open
                NERDTree
            else
                NERDTree
                TagbarOpen
            endif

            " Jump back to the original window
            for window in range(1, winnr('$'))
                execute window . 'wincmd w'
                if exists('w:jumpbacktohere')
                    unlet w:jumpbacktohere
                    break
                endif
            endfor
        endfunction

        nmap wm :call ToggleNERDTreeAndTagbar()<CR>
        " }

    " gist {
        let g:gist_open_browser_after_post = 1
    " }

" }


" Settings {

    " 关闭最后窗口同时关闭nerdtree {
        autocmd WinEnter * call s:CloseIfOnlyNerdTreeLeft()
        " Close all open buffers on entering a window if the only
        " buffer that's left is the NERDTree buffer
        function! s:CloseIfOnlyNerdTreeLeft()
            if exists("t:NERDTreeBufName")
                if bufwinnr(t:NERDTreeBufName) != -1
                    if winnr("$") == 1
                        q
                    elseif winnr("$") == 2
                        if bufwinnr("__Tag_List__") != -1
                            q
                        endif
                    endif
                endif
            endif
        endfunction
    " }

    " 新建.c,.h,.sh,.java文件，自动插入文件头 {
        autocmd BufNewFile *.md exec ":call Setmd()"
        func Setmd()
            call setline(1,"date: ".strftime("%Y-%m-%d %T"))
            call append(line("."),"tags: ")
            call append(line(".")+1,"---")
            call append(line(".")+2,"")
        endfunc
        autocmd BufNewFile *.cpp,*.[ch],*.sh,*.py,*.html,*.php,*java exec ":call SetTitle()"
        ""定义函数SetTitle，自动插入文件头
        func SetTitle()
            if &filetype=='python'
                call setline(1, "#-*- encoding: UTF-8 -*-")
                call append(line("."), "#---------------------------------import------------------------------------")
                call append(line(".")+1, "#---------------------------------------------------------------------------")
                call append(line(".")+2, "############################################################################")
            endif
            if &filetype=='sh'
                call setline(1,"\#########################################################################")
                call append(line("."), "\# File Name: ".expand("%"))
                call append(line(".")+1, "\# Author: limbo")
                call append(line(".")+2, "\# mail: 468137306@qq.com")
                call append(line(".")+3, "\# Created Time: ".strftime("%c"))
                call append(line(".")+4, "\# Last changed:  TIMESTAMP")
                call append(line(".")+5, "\#########################################################################")
                call append(line(".")+6, "\#!/bin/bash".expand("%"))
                call append(line(".")+7, "")
            endif
            if &filetype=='html' || &filetype=='php'
                call setline(1, "<!--*************************************************************************")
                call append(line("."), "      > File Name: ".expand("%"))
                call append(line(".")+1, "      > Author: limbo")
                call append(line(".")+2, "      > Mail: 468137306@qq.com")
                call append(line(".")+3, "      > Created Time: ".strftime("%c"))
                call append(line(".")+4, "      > Last changed:  TIMESTAMP")
                call append(line(".")+5, " ************************************************************************-->")
                call append(line(".")+6, "")
            endif
            if &filetype=='cpp'
                call append(line(".")+6, "#include<iostream>")
                call append(line(".")+7, "using namespace std;")
                call append(line(".")+8, "")
            endif
            if &filetype=='c'
                call setline(1, "/*************************************************************************")
                call append(line("."), "      > File Name: ".expand("%"))
                call append(line(".")+1, "      > Author: limbo")
                call append(line(".")+2, "      > Mail: 468137306@qq.com")
                call append(line(".")+3, "      > Created Time: ".strftime("%c"))
                call append(line(".")+4, "      > Last changed: 2014年12月07日 星期日 09时59分49秒
                call append(line(".")+5, " ************************************************************************/")
                call append(line(".")+6, "#include<stdio.h>")
                call append(line(".")+7, "")
            endif
            if &filetype=='php' || &filetype=='html'
                call setline(9,['<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">','<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">','<head>','    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />','    <title></title>','</head>','<body>','</body>','</html>'])
            endif
            if &filetype=='java'
            call setline(9,['public class '.strpart(expand("%"),0,strlen(expand("%"))-5),'{','}'])
            endif
        endfunc
        autocmd BufNewFile * normal G "新建文件后，自动定位到文件末尾
    " }
" }




