source  $HOME/.vim/configs/vim_config/plugins.vim
let mapleader = ','

syntax on "语法高亮
syntax enable
set autoread "Auto read when a file is changed from the outside

"command :W to wirte the file with sudo
command W w !sudo tee % > /dev/null

set number  "显示行号
set so=7 "Set 7 lines to the cursor, when moving vertically using j/k
set ruler "Always show current position
set laststatus=2 "show status line with the specific height

set autoindent
set smartindent "indentation style
"set cindent
set cino=g0 "缩进设置 class 内部的private,protect,public,缩进0
"set autoindent
set backspace=indent,eol,start
set expandtab   "加入的缩进用空格代替
set tabstop=4   "读取的缩进用4空格代替
set softtabstop=4   "退格时4个空格当作一个缩进删除
set shiftwidth=4    "缩进宽度4空格
set showtabline=1
set textwidth=80
set colorcolumn=+1
hi ColorColumn ctermbg=red
hi ColorColumn guibg=red
"set foldcolumn=1 " Add a bit extra margin to the left

set incsearch "单词内部搜索
set ignorecase "Ignore case when searching
set smartcase  "搜索小写字母忽略大小写，大写字母不忽略
set hlsearch "高亮查找结果
set magic "For reugular expression turn magic on( need \ before meta characters only expect * . $ ^ )

set fileformat=unix
set t_Co=256
set background=light
colorscheme luna-term
set fileencodings=utf-8,gb2312,gb18030,gbk,ucs-bom,cp936,latin1
set enc=utf-8
"set t_ti=t_te= "退出vim后仍显示在终端
"set ffs=unix,dos,mac "Default use unix End-Of-Line style LF
"set fileencoding=utf-8
"set nobackup

set wildmenu " Turn on the Wild menu
" Ignore compiled files
set wildignore=*.o,*~,*.pyc
if has("win16") || has("win32")
    set wildignore+=.git\*,.hg\*,.svn\*
else
    set wildignore+=*/.git/*,*/.hg/*,*/.svn/*,*/.DS_Store
endif

" Super useful! From an idea by Michael Naumann. Search the word under the curser use * or # in visual mode
vnoremap <silent> * :<C-u>call VisualSelection('', '')<CR>/<C-R>=@/<CR><CR>
vnoremap <silent> # :<C-u>call VisualSelection('', '')<CR>?<C-R>=@/<CR><CR>

nnoremap <leader>te :tabnew<CR>
nnoremap <leader>tn :tabn<CR>
nnoremap <leader>tp :tabp<CR>
nnoremap <leader>tc :tabc<CR>
nnoremap <leader>to :tabonly<CR>
nnoremap <leader>bn :bn<CR>
nnoremap <leader>bp :bp<CR>
nnoremap <A-Right> :vertical res +1<CR>
nnoremap <A-Left> :vertical res -1<CR>
nnoremap <A-Up> :res -1<CR>
nnoremap <A-Down> :res +1<CR>
nnoremap <leader>bd :Bclose<cr>:tabclose<cr>gT
nnoremap <silent> <leader><CR> :noh<CR>

"insert mode下Shift-Enter直接下一行
inoremap <S-CR> <ESC>o
"insert mode下Ctrl-H = Backspace
inoremap <C-H> <BS>

"输入{} 自动换行
inoremap <expr> <cr> getline(".")[col(".")-2:col(".")-1]=="{}" ? "<cr><esc>O" : "<cr>"

au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif "Return to last eidt position when opening files

" Don't close window, when deleting a buffer
command! Bclose call <SID>BufcloseCloseIt()
function! <SID>BufcloseCloseIt()
    let l:currentBufNum = bufnr("%")
    let l:alternateBufNum = bufnr("#")

    if buflisted(l:alternateBufNum)
        buffer #
    else
        bnext
    endif

    if bufnr("%") == l:currentBufNum
        new
    endif

    if buflisted(l:currentBufNum)
        execute("bdelete! ".l:currentBufNum)
    endif
endfunction

function! VisualSelection(direction, extra_filter) range
    let l:saved_reg = @"
    execute "normal! vgvy"

    let l:pattern = escape(@", "\\/.*'$^~[]")
    let l:pattern = substitute(l:pattern, "\n$", "", "")

    if a:direction == 'gv'
        call CmdLine("Ack '" . l:pattern . "' " )
    elseif a:direction == 'replace'
        call CmdLine("%s" . '/'. l:pattern . '/')
    endif

    let @/ = l:pattern
    let @" = l:saved_reg
endfunction

