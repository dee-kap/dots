scriptencoding utf-8
source ~/.config/nvim/plugins.vim
source ~/.config/nvim/plug-config/coc.vim
source ~/.config/nvim/plug-config/fzf.vim
source ~/.config/nvim/plug-config/nerdtree.vim
""

" ============================================================================ "
" ===                           EDITING OPTIONS                            === "
" ============================================================================ "

" Remap leader key to ,
""let g:mapleader=<space>
let mapleader=","

" change escape
imap jk <Esc>

" set space to mean escape
""nnoremap , :

" enable line numbers
set nu

" Don't show last command
set noshowcmd

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

" Don't highlight current cursor line
"set nocursorline

" Disable line/column number in status line
" Shows up in preview window when airline is disabled if not
set noruler

" Only one line for command line
set cmdheight=1

" === Search === "
" ignore case when searching
set ignorecase

" if the search string has an upper case letter in it, the search will be case sensitive
set smartcase

" highlight as I type
set incsearch

" auto close brackets
inoremap ( ()<Esc>i
inoremap { {}<Esc>i
inoremap {<CR> {<CR>}<Esc>O
inoremap [ []<Esc>i
inoremap < <><Esc>i
inoremap ' ''<Esc>i
inoremap " ""<Esc>i

" fuzzy finding
"nnoremap <leader>p :GFiles<CR>
""nnoremap <leader>np :Files<CR>
let g:fzf_colors =
\ { 'fg':      ['fg', 'Normal'],
  \ 'bg':      ['bg', 'Normal'],
  \ 'hl':      ['fg', 'cssTagName'],
  \ 'fg+':     ['fg', 'CursorLine', 'CursorColumn', 'Normal'],
  \ 'bg+':     ['bg', 'CursorLine', 'CursorColumn'],
  \ 'hl+':     ['fg', 'Statement'],
  \ 'info':    ['fg', 'PreProc'],
  \ 'border':  ['fg', 'Ignore'],
  \ 'prompt':  ['fg', 'Conditional'],
  \ 'pointer': ['fg', 'Exception'],
  \ 'marker':  ['fg', 'Keyword'],
  \ 'spinner': ['fg', 'Label'],
  \ 'header':  ['fg', 'Comment'] }

" open vimrc in a vsplit
nnoremap <leader>ev :vsplit $MYVIMRC<cr>

" reload vimrc
nnoremap <leader>sv :source $MYVIMRC<cr>

" Jump to last cursor position unless it's invalid or in an event handler
autocmd BufReadPost *
      \ if line("'\"") > 0 && line("'\"") <= line("$") |
      \   exe "normal g`\"" |
      \


" buffer navigation
nnoremap <leader>bp :bprev<CR>
nnoremap <leader>bn :bnext<CR>

" === Completion Settings === "

" Don't give completion messages like 'match 1 of 2'
" or 'The only match'
""set shortmess+=c



" Color scheme
hi Comment cterm=italic
let g:onedark_hide_endofbuffer=1
let g:onedark_terminal_italics=1
let g:onedark_termcolors=256

syntax on
colorscheme onedark
if (has("termguicolors"))
    set termguicolors
    hi LineNr ctermbg=NONE guibg=NONE
endif


"  ============================================================================ "
" ===                           PLUGIN SETUP                               === "
" ============================================================================ "

" Wrap in try/catch to avoid errors on initial install before plugin is available
try

  " Coc"


  
" === Denite setup ==="
" Use ripgrep for searching current directory for files
" By default, ripgrep will respect rules in .gitignore
"   --files: Print each file that would be searched (but don't search)
"   --glob:  Include or exclues files for searching that match the given glob
"            (aka ignore .git files)
"
""call denite#custom#var('file/rec', 'command', ['rg', '--files', '--glob', '!.git'])

" Use ripgrep in place of "grep"
""call denite#custom#var('grep', 'command', ['rg'])

" Custom options for ripgrep
"   --vimgrep:  Show results with every match on it's own line
"   --hidden:   Search hidden directories and files
"   --heading:  Show the file name above clusters of matches from each file
"   --S:        Search case insensitively if the pattern is all lowercase
""call denite#custom#var('grep', 'default_opts', ['--hidden', '--vimgrep', '--heading', '-S'])

" Recommended defaults for ripgrep via Denite docs
""call denite#custom#var('grep', 'recursive_opts', [])
""call denite#custom#var('grep', 'pattern_opt', ['--regexp'])
""call denite#custom#var('grep', 'separator', ['--'])
""call denite#custom#var('grep', 'final_opts', [])

" Remove date from buffer list
""call denite#custom#var('buffer', 'date_format', '')

" Custom options for Denite
"   auto_resize             - Auto resize the Denite window height automatically.
"   prompt                  - Customize denite prompt
"   direction               - Specify Denite window direction as directly below current pane
"   winminheight            - Specify min height for Denite window
"   highlight_mode_insert   - Specify h1-CursorLine in insert mode
"   prompt_highlight        - Specify color of prompt
"   highlight_matched_char  - Matched characters highlight
"   highlight_matched_range - matched range highlight
"let s:denite_options = {'default' : {
"\ 'split': 'botright',
"\ 'start_filter': 1,
"\ 'auto_resize': 1,
"\ 'source_names': 'short',
"\ 'prompt': 'λ ',
"\ 'statusline': 0,
"\ 'highlight_matched_char': 'Search',
"\ 'highlight_matched_range': 'Underline',
"\ 'highlight_window_background': 'NormalFloat',
"\ 'highlight_filter_background': 'DiffAdd',
"\ 'winrow': 1,
"\ 'vertical_preview': 1
"\ }}

""let s:denite_options = {'default' : {
""\ 'split': 'botright',
""\ 'start_filter': 1,
""\ 'auto_resize': 1,
""\ 'source_names': 'short',
""\ 'prompt': 'λ ',
""\ 'statusline': 1,
""\ 'winrow': 1,
""\ 'vertical_preview': 1
""\ }}
" Loop through denite options and enable them
endtry
autocmd FileType python let b:coc_root_patterns = ['.git', '.env']
