" install Vundle bundles
if filereadable(expand("~/.vimrc.bundles"))
  source ~/.vimrc.bundles
endif

" General {

    set autowrite                  " 自动保存
    set shell=bash\ -i
    set tags+=./tags;
    set t_Co=256                   " airline 颜色显示
    set ambiwidth=double
    set mouse=a                    " 鼠标支持
    filetype plugin on             " 允许插件
    set helplang=cn                " 中文文档
    set nobackup                   " 从不备份
    set noswapfile                 " 关闭交换文件
    set wildignore=*.swp,*.bak,*.pyc,*.class,.svn
    set undodir=~/.undodir

    set mouse=n                    " 所有模式使用鼠标
    set matchtime=1                " 匹配括号高亮的时间（单位是十分之一秒）
    let &termencoding=&encoding    " 中文设置
    set fileencodings=utf-8,gbk    " 中文设置
    set foldmethod=indent          " 代码折叠 indent

    "设置 退出vim后，内容显示在终端屏幕, 可以用于查看和复制,好处：误删什么的，如果以前屏幕打开，可以找回
    set t_ti= t_te=

    "tab切换页面
    set hidden "in order to switch between buffers with unsaved change
    map <tab> :bp<cr>
    map <S-tab> :bn<cr>

    " 插入模式下用绝对行号, 普通模式下用相对
    " autocmd InsertEnter * :set norelativenumber number
    " autocmd InsertLeave * :set relativenumber

    " 打开文件时自动回到上次编辑的地方
    if has("autocmd")
    autocmd BufRead *.txt set tw=78
    autocmd BufReadPost *
      \ if line("'\"") > 0 && line ("'\"") <= line("$") |
      \   exe "normal g'\"" |
      \ endif
    endif

    "断行
    " set columns=80
    " set tw=80
    " set fo+=Mm

    " set fillchars=vert:\ ,stl:\ ,stlnc:\ " 在被分割的窗口间显示空白，便于阅读
    "map <C-A> ggVG"+y
    " autocmd! bufwritepost .vimrc source % " vimrc文件修改之后自动加载。 linux。
    set modifiable

" }

" vim-UI {

    syntax enable                  " 语法高亮
    set background=dark
    let g:solarized_termcolors=256
    colorscheme solarized           " molokai zenburn Tomorrow
    se guifont=Consola:h14          " 设置默认字体
    highlight clear SignColumn
    highlight clear LineNr

    " colorsheme solarized {
        " let g:solarized_termtrans=1
        " let g:solarized_contrast="high"
        " let g:solarized_visibility="high"
    " }

    " molokai {
        "let g:molokai_original = 1
        "let g:rehash256 = 1
    " }

    set cursorline                 " 突出显示当前行
    set cursorcolumn               " 突出显示当前列
    set ruler                      " 显示ruler
    set linespace=0                " 行之间没有多余空格
    set nu                         " 显示行号
    " set relativenumber             " 设置相对行号
    set showmatch                  " 高亮显示匹配的括号
    set incsearch                  " 跟踪搜索
    set hlsearch                   " 高亮搜索
    set ignorecase                 " 搜索忽略大小写
    set wildmenu                   " 输入vim命令时补全菜单
    " set wildmode=list:longest,full " 输入Tab时,先列出符合的,再列出最长匹配,最后是全部
    set scrolljump=5               " 光标离开屏幕滑动距离
    set scrolloff=3                " 滑动时离上下行最短距离
    set foldenable                 " 自动折叠
    set ai                         " 自动缩进
    set si                         " 只能缩进
    set cindent                    " c/c++风格
    set backspace=eol,start,indent
    set cc=80                      " 80列高亮
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


    " jk is escape
    inoremap jk <esc>

    " highlight last inserted text
    nnoremap gV `[v`]

    " move to beginning/end of line
    nnoremap B ^
    nnoremap E $

    " $/^ doesn't do anything
    nnoremap $ <nop>
    nnoremap ^ <nop>

    " 编辑模式下写括号时的快捷键
    inoremap <C-h> <Left>
    inoremap <C-j> <Down>
    inoremap <C-k> <Up>
    inoremap <C-l> <Right>

    " <F2> 去空行 {
        nnoremap <F2> :g/^\s*$/d<CR>
    " }

    " <F3> 删除多余空格 {
        map <F3> :%s/\s\+$//<CR>
    " }

    " <F4> 相对和绝对行号切换 {
        " nnoremap <F4> :call NumberToggle()<cr>
        " function! NumberToggle()
        "   if(&relativenumber == 1)
        "     set norelativenumber number
        "   else
        "     set relativenumber
        "   endif
        " endfunc
    " }

    " <F5> 编译运行 {
        map <F5> :call CompilePY()<CR>
        function CompilePY()
            exec "w"
            exec "!python \"%\""
        endfunction
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

    autocmd! bufwritepost .vimrc source % " vimrc文件修改之后自动加载。 linux。
" }
