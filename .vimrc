syntax on
filetype off 
set nocompatible
set rtp+=~/.vim/bundle/vundle
call vundle#rc()

Bundle 'gmarik/vundle'

"my bundles here
Bundle 'altercation/vim-colors-solarized'
Bundle 'taglist.vim'
Bundle 'The-NERD-TREE'
Bundle 'minibufexpl.vim'
Bundle 'OmniCppComplete'
Bundle 'winmanager'
Bundle 'snipMate'
Bundle 'SuperTab'
"bundles end

map <C-F12> :Tlist<CR>
map <C-F11> :NERDTreeToggle<CR>
set tags=tags;
set tags+=~/.vim/systags
set nu
set tabstop=4
set shiftwidth=4
set expandtab

filetype plugin indent on
set completeopt=longest,menu
run macros/gdb_mappings.vim

let g:miniBufExplMapWindowNavVim = 1 
let g:miniBufExplMapWindowNavArrows = 1 
let g:miniBufExplMapCTabSwitchBufs = 1 
let g:miniBufExplModSelTarget = 1

"SuperTab config
let g:SuperTabMappingForward="<tab>"
let g:SuperTabDefaultCompletionType="<C-X><C-O>" 


"winmanager config
let g:AutoOpenWinManager = 1
nmap <silent> <F8> :WMToggle<cr>
let g:winManagerWindowLayout = "BufExplorer|TagList"
let g:winManagerWidth = 40

"OmniCppComplete
let OmniCpp_NamespaceSearch = 1
let OmniCpp_GlobalScopeSearch = 1
let OmniCpp_ShowAccess = 1 
let OmniCpp_ShowPrototypeInAbbr = 1 " 显示函数参数列表 
let OmniCpp_MayCompleteDot = 1   " 输入 .  后自动补全
let OmniCpp_MayCompleteArrow = 1 " 输入 -> 后自动补全 
let OmniCpp_MayCompleteScope = 1 " 输入 :: 后自动补全 
let OmniCpp_DefaultNamespaces = ["std", "_GLIBCXX_STD"]
" 自动关闭补全窗口 
 au CursorMovedI,InsertLeave * if pumvisible() == 0|silent! pclose|endif 
 set completeopt=menuone,menu,longest

