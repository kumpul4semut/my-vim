:set number
:set autoindent
:set tabstop=4
:set shiftwidth=4
:set smarttab
:set softtabstop=4
:set mouse=a
:set keymodel=startsel,stopsel

call plug#begin()

"Material theme"
Plug 'kaicataldo/material.vim', { 'branch': 'main' }

"Nerdtree"
Plug 'preservim/nerdtree'

"nerdtree icon"
Plug 'ryanoasis/vim-devicons'

"lua"
Plug 'nvim-lualine/lualine.nvim'

"ctrlp"
Plug 'ctrlpvim/ctrlp.vim'

"phpactor"
Plug 'phpactor/phpactor'

"emmet"
Plug 'mattn/emmet-vim'

"multi user"
Plug 'terryma/vim-multiple-cursors'

call plug#end()

"setup nerdtree toggle"
nnoremap <C-b> :NERDTreeToggle<CR>

"normal mode change"
inoremap jj <Esc>

let g:user_emmet_expandabbr_key='<Tab>'

"setup theme material"
let g:material_theme_style = 'darker-community'
colorscheme material

"setup nerdtree"
"autocmd StdinReadPre * let s:std_in=1"
"autocmd VimEnter * if argc() == 0 && !exists('s:std_in') | NERDTree | endif"

" For Neovim 0.1.3 and 0.1.4 - https://github.com/neovim/neovim/pull/2198
if (has('nvim'))
  let $NVIM_TUI_ENABLE_TRUE_COLOR = 1
endif

" For Neovim > 0.1.5 and Vim > patch 7.4.1799 - https://github.com/vim/vim/commit/61be73bb0f965a895bfb064ea3e55476ac175162
" Based on Vim patch 7.4.1770 (`guicolors` option) - https://github.com/vim/vim/commit/8a633e3427b47286869aa4b96f2bfc1fe65b25cd
" https://github.com/neovim/neovim/wiki/Following-HEAD#20160511
if (has('termguicolors'))
  set termguicolors
endif
