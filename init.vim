:set relativenumber
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

"feline"
Plug 'feline-nvim/feline.nvim'

"VS Code like intellisense and language-servers
Plug 'neoclide/coc.nvim'

call plug#end()
"setup nerdtree toggle"
nnoremap <C-b> :NERDTreeToggle<CR>

"normal mode change"
inoremap jj <Esc>

let g:user_emmet_expandabbr_key='<Tab>'

"setup theme material"
let g:material_theme_style = 'darker-community'
colorscheme material

if (has('nvim'))
  let $NVIM_TUI_ENABLE_TRUE_COLOR = 1
endif

if (has('termguicolors'))
  set termguicolors
endif

