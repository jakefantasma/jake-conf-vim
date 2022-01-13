set autoindent
set noswapfile
set nobackup
set numberwidth=1
set nu
set relativenumber
set mouse=a
set encoding=UTF-8
set nocompatible
set background=dark
colorscheme solarized

set guifont=DroidSansMono_Nerd_Font:h11
syntax enable
set rtp+=~/.vim/plugged/fzf
""maps to nerdtree
nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>
""maps to prettier
""mov tabs
nnoremap <Tab> :tabprevious<CR>
nnoremap <C-i> :tabnext<CR>
""functions calls 
nnoremap <F2> :FZF<CR>
nnoremap <F3> :Prettier<CR>
nnoremap <F4> :tabclose<CR>
nnoremap <F5> :tabnew <CR>
""resize
nnoremap <C-Left> :vertical resize -1 <cr>
nnoremap <C-Right> :vertical resize +3<cr>
""settings to nerdtree
let g:NERDTreeDirArrowExpandable = '>'
let g:NERDTreeDirArrowCollapsible = '<'
let g:NERDTreeWinPos = "right"

""config hight"
let g:javascript_plugin_jsdoc = 1
let g:javascript_plugin_ngdoc = 1
let g:closetag_filenames = '*.html,*.xhtml,*.js'


"" own config to map 
call plug#begin('~/.vim/plugged')



 ""format files
 Plug 'prettier/vim-prettier', { 'do': 'npm  install', 'branch': 'release/0.x'  }
 ""edit mode insert close tag and simbols 
 Plug 'alvan/vim-closetag'
 Plug 'jiangmiao/auto-pairs'
 ""coc give sugestion to file editing 
 Plug 'neoclide/coc.nvim', {'branch': 'release'}
 ""navbar rigth to see tree dir 
 ""icons file
 Plug 'preservim/nerdtree'
 Plug 'ryanoasis/vim-devicons'
 ""sintaxis js 
 Plug  'pangloss/vim-javascript'
 ""dependency to linter
 Plug 'vim-airline/vim-airline'
 Plug 'vim-airline/vim-airline-themes'
 ""file find
 Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }

 
  ""Plug 'preservim/tagbar'


 call plug#end()
