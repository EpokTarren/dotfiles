syntax on
set noerrorbells
set tabstop=4
set noexpandtab
set copyindent
set preserveindent
set softtabstop=0
set shiftwidth=4
set smartindent
set nuw=5
set noswapfile
set incsearch
set nohlsearch
set hidden
set scrolloff=8
set number relativenumber

if (has('nvim'))
	let $NVIM_TUI_ENABLE_TRUE_COLOR = 1
endif

if (has('termguicolors'))
	set termguicolors
endif

let mapleader = ","

let g:airline#extensions#tabline#enabled = 1
let g:airline_theme = 'tarren'
let g:airline_inactive_collapse = 0
let g:airline_powerline_fonts = 1

call plug#begin()
	Plug 'neoclide/coc.nvim', {'branch': 'release'}
	Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}

	Plug 'scrooloose/nerdtree'
	Plug 'Xuyuanp/nerdtree-git-plugin'
	Plug 'ryanoasis/vim-devicons'
	Plug 'preservim/nerdcommenter'

	Plug 'ctrlpvim/ctrlp.vim'
	Plug 'nvim-telescope/telescope.nvim'
	Plug 'vim-airline/vim-airline'

	Plug 'EpokTarren/themes.vim'
call plug#end()

command! -nargs=0 Prettier :CocCommand prettier.formatFile

" coc config
let g:coc_global_extensions = [
	\ 'coc-snippets',
	\ 'coc-pairs',
	\ 'coc-tsserver',
	\ 'coc-eslint',
	\ 'coc-prettier',
	\ 'coc-json',
	\ ]

nmap <leader>n :NERDTreeFocus<CR>
nmap <C-t> :NERDTreeToggle<CR>
nmap <C-f> :NERDTreeFind<CR>

" Buffers navigation
nmap <C-J> :bnext<CR>
nmap <C-K> :bprevious<CR>
nmap <C-W> :bdelete<CR>

" GoTo code navigation.
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" Use K to show documentation in a preview
nmap <silent> K :call <SID>show_documentation()<CR>

function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  elseif (coc#rpc#ready())
    call CocActionAsync('doHover')
  else
    execute '!' . &keywordprg . " " . expand('<cword>')
  endif
endfunction

" Highlight the symbol and its references when holding the cursor.
autocmd CursorHold * silent call CocActionAsync('highlight')

" Renaming.
nmap <leader>rn <Plug>(coc-rename)

" Find files using Telescope command-line sugar.
nmap <leader>ff <cmd>Telescope find_files<cr>
nmap <leader>fg <cmd>Telescope live_grep<cr>
nmap <leader>fb <cmd>Telescope buffers<cr>
nmap <leader>fh <cmd>Telescope help_tags<cr>

let g:ctrlp_user_command = ['.git/', 'git --git-dir=%s/.git ls-files -oc --exclude-standard']

let g:theme_style = '"Girl"'
colorscheme tarren

" Reset background so teminal bg shows
hi Normal guibg=NONE ctermbg=NONE
