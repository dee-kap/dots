lua require 'config'
scriptencoding utf-8

set nocompatible

" auto-install vim-plug
if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  "autocmd VimEnter * PlugInstall
  autocmd VimEnter * PlugInstall | source $MYVIMRC
endif

call plug#begin('~/.config/nvim/autoload/plugged')

Plug 'nvim-lua/popup.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
"Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'} 

Plug 'voldikss/vim-floaterm'

Plug 'kaicataldo/material.vim', {'branch': 'main'}
<<<<<<< HEAD
Plug 'sainnhe/gruvbox-material'
"Plug 'cormacrelf/vim-colors-github'
Plug 'mhartington/oceanic-next'
Plug 'chriskempson/base16-vim'
Plug 'miyakogi/conoline.vim'
Plug 'christianchiarulli/nvcode-color-schemes.vim'
=======
Plug 'chriskempson/base16-vim'
Plug 'miyakogi/conoline.vim'
Plug 'christianchiarulli/nvcode-color-schemes.vim'
Plug 'sainnhe/edge'
>>>>>>> 1984d9fa1770fb29dfba034462a1e90e8e701eaa

Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

Plug 'neoclide/coc.nvim', {'branch': 'release'}
"Plug 'ryanoasis/vim-devicons'
Plug 'preservim/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'preservim/nerdcommenter'
Plug 'vwxyutarooo/nerdtree-devicons-syntax'
Plug 'kyazdani42/nvim-web-devicons'
Plug 'kyazdani42/nvim-tree.lua'

"Plug 'tpope/vim-fugitive'
"Plug 'airblade/vim-gitgutter'

<<<<<<< HEAD
Plug 'hoob3rt/lualine.nvim'
"Plug 'vim-airline/vim-airline'
"Plug 'vim-airline/vim-airline-themes'
=======

Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
>>>>>>> 1984d9fa1770fb29dfba034462a1e90e8e701eaa

"Plug 'pangloss/vim-javascript'
"Plug 'leafgarland/typescript-vim'
"Plug 'peitalin/vim-jsx-typescript'

"Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}  " We recommend updating the parsers on update
<<<<<<< HEAD
=======

>>>>>>> 1984d9fa1770fb29dfba034462a1e90e8e701eaa
Plug 'sheerun/vim-polyglot'
"Plug 'SirVer/ultisnips'
"Plug 'mlaursen/vim-react-snippets'

"Plug 'nvim-lua/popup.nvim'
"Plug 'nvim-lua/plenary.nvim'
"Plug 'nvim-telescope/telescope.nvim'

" for testing
Plug 'janko-m/vim-test'
Plug 'kassio/neoterm'

" rails related plugins
Plug 'tpope/vim-rails'
<<<<<<< HEAD

" lua
Plug 'norcalli/nvim-colorizer.lua'
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'} 
Plug 'nvim-lua/popup.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'lewis6991/gitsigns.nvim'
Plug 'andymass/vim-matchup'

=======
>>>>>>> 1984d9fa1770fb29dfba034462a1e90e8e701eaa
call plug#end()

" Automatically install missing plugins on startup
autocmd VimEnter *
  \  if len(filter(values(g:plugs), '!isdirectory(v:val.dir)'))
  \|   PlugInstall --sync | q
  \| endif

" ============================================================================ "
" ===                           EDITING OPTIONS                            === "
" ============================================================================ "

" Remap leader key to ,
""let g:mapleader=<space>
nnoremap <SPACE> <Nop>
let mapleader=" "

" change escape
imap jk <Esc>

" set space to mean escape
""nnoremap , :

" enable line numbers
set nu
" also set relative line numbers
" nu and rnu together will turn on hybrid line numbers
set rnu

" Don't show last command
"set noshowcmd

" Yank and paste with the system clipboard
set clipboard=unnamed

" Hides buffers instead of closing them
set hidden

" === TAB/Space settings === "
" Insert spaces when TAB is pressed.
set expandtab

" Change number of spaces that a <Tab> counts for during editing ops
set softtabstop=2

" Indentation amount for < and > commands.
set shiftwidth=2

" do not wrap long lines by default
set nowrap

" indent based folding
"set foldmethod=syntax

" Don't highlight current cursor line
"set nocursorline

" Disable line/column number in status line
" Shows up in preview window when airline is disabled if not
set noruler

" Only one line for command line
"set cmdheight=1

" === Search === "
" ignore case when searching
set ignorecase

" if the search string has an upper case letter in it, the search will be case sensitive
set smartcase

" highlight as I type
set incsearch

" open vimrc in a vsplit
nnoremap <leader>ev :vsplit $MYVIMRC<cr>

" reload vimrc
nnoremap <leader>sv :source $MYVIMRC<cr>

" remap ctrl w
nnoremap <leader>w <C-w>

" save buffer
nnoremap <leader>fs :w<cr>

" search buffers by name
<<<<<<< HEAD
nnoremap <leader>bb :Buffers<cr>
=======
"nnoremap <leader>bb :Buffers<cr>
>>>>>>> 1984d9fa1770fb29dfba034462a1e90e8e701eaa

" use clipboard as default register. This will allow yanking and pasting into
" another application
if system('uname -s') == "Darwin\n"
  set clipboard=unnamed "OSX
else
  set clipboard=unnamedplus "Linux
endif

" Jump to last cursor position unless it's invalid or in an event handler
autocmd BufReadPost *
      \ if line("'\"") > 0 && line("'\"") <= line("$") |
      \   exe "normal g`\"" |
      \


" Color scheme
set t_Co=256
hi Comment cterm=italic
let g:onedark_hide_endofbuffer=1
let g:onedark_terminal_italics=1
let g:onedark_termcolors=256

syntax on
if (has('nvim'))
  let $NVIM_TUI_ENABLE_TRUE_COLOR = 1
endif

"let g:material_theme_style = 'palenight'
"let g:material_terminal_italics = 1

<<<<<<< HEAD
let g:gruvbox_material_palette = 'mix'
let g:gruvbox_material_enable_italic = 1

colorscheme base16-onedark

"colorscheme material
=======
"let g:gruvbox_material_palette = 'mix'
"let g:gruvbox_material_enable_italic = 1

>>>>>>> 1984d9fa1770fb29dfba034462a1e90e8e701eaa
if (has("termguicolors"))
    set t_8f=\[[38;2;%lu;%lu;%lum
    set t_8b=\[[48;2;%lu;%lu;%lum
    set termguicolors
    hi! LineNr ctermbg=NONE guibg=NONE
    hi! Normal ctermbg=NONE guibg=NONE
endif

let g:edge_style = 'aura'
let g:edge_enable_italic = 1
let g:edge_disable_italic_comment = 1

"colorscheme onedark
colorscheme edge
"colorscheme base16-onedark
"colorscheme material

" FZF
"nnoremap <leader><SPACE> :GFiles<CR>
"nnoremap <leader><SPACE> :GFiles<CR>
"nnoremap <leader>pf :GFiles<CR>
"nnoremap <leader>ff :Files<CR>
<<<<<<< HEAD
=======

" Telescope
nnoremap <leader>ff <cmd>lua require('telescope.builtin').find_files()<cr>
nnoremap <leader><leader> <cmd>lua require('telescope.builtin').find_files()<cr>
nnoremap <leader>fg <cmd>lua require('telescope.builtin').live_grep()<cr>
nnoremap <leader>bb <cmd>lua require('telescope.builtin').buffers()<cr>
nnoremap <leader>fh <cmd>lua require('telescope.builtin').help_tags()<cr>
>>>>>>> 1984d9fa1770fb29dfba034462a1e90e8e701eaa

" coc
" GoTo code navigation.
" prettier command
command! -nargs=0 Prettier :CocCommand prettier.formatFile


" Use tab for trigger completion with characters ahead and navigate.
" NOTE: Use command ':verbose imap <tab>' to make sure tab is not mapped by
" other plugin before putting this into your config.
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

"" Use <c-space> to trigger completion.
"if has('nvim')
  "inoremap <silent><expr> <c-space> coc#refresh()
"else
  "inoremap <silent><expr> <c-@> coc#refresh()
"endif

" Use <cr> to confirm completion, `<C-g>u` means break undo chain at current
" position. Coc only does snippet and additional edit on confirm.
" <cr> could be remapped by other vim plugin, try `:verbose imap <CR>`.
if exists('*complete_info')
  inoremap <expr> <cr> complete_info()["selected"] != "-1" ? "\<C-y>" : "\<C-g>u\<CR>"
else
  inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"
endif

nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  else
    call CocAction('doHover')
  endif
endfunction
" Use K to show documentation in preview window.
nnoremap <silent> K :call <SID>show_documentation()<CR>

" Use <C-l> for trigger snippet expand.
imap <C-l> <Plug>(coc-snippets-expand)
" Use <C-j> for select text for visual placeholder of snippet.
vmap <C-j> <Plug>(coc-snippets-select)
" Use <C-j> for both expand and jump (make expand higher priority.)
imap <C-j> <Plug>(coc-snippets-expand-jump)


" This is required to fix Error on autocmd TextYankPost error in coc
augroup ReactFiletypes
  autocmd!
  autocmd BufRead,BufNewFile *.jsx set filetype=javascriptreact
  autocmd BufRead,BufNewFile *.tsx set filetype=typescriptreact
augroup END

" nerdtree
"let g:NERDTreeShowHidden=1
"nmap <leader>nt :NERDTreeToggle<CR>
"nmap <leader>ntf :NERDTreeFind<CR>

<<<<<<< HEAD
" airline
"let g:airline#extensions#tabline#enabled = 1
"set laststatus=2
"set ttimeoutlen=50
"let g:airline_theme = 'onedark'
"let g:airline#extensions#tabline#left_sep = ''
"let g:airline#extensions#tabline#left_alt_sep = ''
"let g:airline#extensions#tabline#right_sep = ''
"let g:airline#extensions#tabline#right_alt_sep = ''

"let g:airline_powerline_fonts = 1
"let g:airline_left_sep = ''
"let g:airline_right_sep = ''
"let g:airline_section_z = airline#section#create(['windowswap', '%3p%% ', 'linenr', ':%3v'])
=======
" vim-tree
nmap <leader>e :NvimTreeToggle<CR>
nmap <leader>ef :NvimTreeFindFile<CR>
let g:nvim_tree_indent_markers = 1

" airline
let g:airline#extensions#tabline#enabled = 1
set laststatus=2
set ttimeoutlen=50
let g:airline_theme = 'onedark'
"let g:airline_theme = 'gruvbox_material'
"let g:airline_theme = 'material'
let g:airline#extensions#tabline#left_sep = ''
let g:airline#extensions#tabline#left_alt_sep = ''
let g:airline#extensions#tabline#right_sep = ''
let g:airline#extensions#tabline#right_alt_sep = ''

let g:airline_powerline_fonts = 1
let g:airline_left_sep = ''
let g:airline_right_sep = ''
let g:airline_section_z = airline#section#create(['windowswap', '%3p%% ', 'linenr', ':%3v'])
>>>>>>> 1984d9fa1770fb29dfba034462a1e90e8e701eaa

set showtabline=2

" Floaterm
nnoremap <leader>gs :FloatermNew lazygit<CR>
nnoremap <leader>t :FloatermNew<CR>

" highlight current line
let g:conoline_auto_enable = 1

<<<<<<< HEAD
" telescope
"nnoremap <leader><SPACE> <cmd>Telescope find_files<cr>
"nnoremap <leader>ff <cmd>Telescope find_files<cr>
"nnoremap <leader>ss <cmd>Telescope live_grep<cr>
"nnoremap <leader>bb <cmd>Telescope buffers<cr>
"nnoremap <leader>fh <cmd>Telescope help_tags<cr>

=======
>>>>>>> 1984d9fa1770fb29dfba034462a1e90e8e701eaa
" testing with neoterm
" https://gist.github.com/adamzaninovich/5b9c7544cb0f5e746f75
map <silent> <leader>t :TestNearest<CR>
map <silent> <leader>f :TestFile<CR>
map <silent> <leader>T :TestSuite<CR>
map <silent> <leader>r :TestLast<CR>
map <silent> <leader>g :TestVisit<CR>

if has("nvim")
  " change cursor to bar in insert mode
  let $NVIM_TUI_ENABLE_CURSOR_SHAPE=1

  " run tests with :T
  let test#strategy = "neoterm"

  " vertical split instead of the default horizontal
  "let g:neoterm_position = "vertical"
  let g:neoterm_default_mod = 'botright'

  " pretty much essential: by default in terminal mode, you have to press ctrl-\-n to get into normal mode
  " ain't nobody got time for that
  tnoremap <Esc> <C-\><C-n>

  " optional: make it easier to switch between terminal splits
  " ctrl doesn't work for some reason so I use alt
  " I think the terminal is capturing ctrl and not bubbling to vim or something
  tnoremap <A-h> <C-\><C-n><C-w>h
  tnoremap <A-j> <C-\><C-n><C-w>j
  tnoremap <A-k> <C-\><C-n><C-w>k
  tnoremap <A-l> <C-\><C-n><C-w>l

  " totally optional: mirror the alt split switching in non-terminal splits
  nnoremap <A-h> <C-w>h
  nnoremap <A-j> <C-w>j
  nnoremap <A-k> <C-w>k
  nnoremap <A-l> <C-w>l
endif

<<<<<<< HEAD

" lua
lua require'colorizer'.setup()
lua require('gitsigns').setup()
" Using lua functions
nnoremap <leader>ff <cmd>lua require('telescope.builtin').find_files()<cr>
nnoremap <leader>fg <cmd>lua require('telescope.builtin').live_grep()<cr>
nnoremap <leader>fb <cmd>lua require('telescope.builtin').buffers()<cr>
nnoremap <leader>fh <cmd>lua require('telescope.builtin').help_tags()<cr>
=======
>>>>>>> 1984d9fa1770fb29dfba034462a1e90e8e701eaa
