" Specify a directory for plugins
" - For Neovim: stdpath('data') . '/plugged'
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.vim/plugged')

" Make sure you use single quotes
" File explorer
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'majutsushi/tagbar', { 'on':  'TagbarToggle' }

" Shorthand notation; fetches https://github.com/junegunn/vim-easy-align
Plug 'junegunn/vim-easy-align'

" Any valid git URL is allowed
Plug 'https://github.com/junegunn/vim-github-dashboard.git'

" Multiple Plug commands can be written in a single line using | separators
" Plug 'SirVer/ultisnips' | Plug 'honza/vim-snippets'

" On-demand loading
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'tpope/vim-fireplace', { 'for': 'clojure' }

" Using a non-master branch
"Plug 'rdnetto/YCM-Generator', { 'branch': 'stable' }
" Using a tagged release; wildcard allowed (requires git 1.9.2 or above)
"
Plug 'fatih/vim-go', { 'tag': '*' }

" Plugin options
Plug 'nsf/gocode', { 'tag': 'v.20150303', 'rtp': 'vim' }

" Plugin outside ~/.vim/plugged with post-update hook
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
" Unmanaged plugin (manually installed and updated)
"Plug '~/my-prototype-plugin'
"Plug 'dracula/vim', { 'as': 'dracula' }
"Plug 'drewtempelmeyer/palenight.vim' , {'as':'palenight'}

" GUI vim
Plug 'morhetz/gruvbox'

" fugitive plugin
Plug 'tpope/vim-fugitive'

" vim-surround plugin
Plug 'tpope/vim-surround'

" airline plugin
Plug 'vim-airline/vim-airline'


Plug 'chiel92/vim-autoformat'


" Initialize plugin system

" mutliple cursors
"Plug 'terryma/vim-multiple-cursors'
" Plugin unix shell commands
Plug 'tpope/vim-eunuch'

" html code plugin
Plug 'mattn/emmet-vim'

" tag selection
Plug 'vim-scripts/matchit.zip'

" nerd commenter
Plug 'preservim/nerdcommenter'


" ctrlp for mru
Plug 'kien/ctrlp.vim'

Plug 'aserebryakov/vim-todo-lists'

" Better manage Vim sessions.
"Plug 'tpope/vim-obsession'

" start search pluginn
Plug 'haya14busa/vim-asterisk'

"show unused whitespaces
Plug 'ntpeters/vim-better-whitespace'

" Automatically set 'shiftwidth' + 'expandtab' (indention) based on file type.
Plug 'tpope/vim-sleuth'

" A number of useful motions for the quickfix list, pasting and more.
Plug 'tpope/vim-unimpaired'

" Distraction-free writing in Vim
Plug 'junegunn/goyo.vim'

" languages and file types
Plug 'othree/html5.vim'

" vim polygot
Plug 'sheerun/vim-polyglot'

"coc engine
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" easy motion
Plug 'easymotion/vim-easymotion'

" vim markdown
Plug 'plasticboy/vim-markdown'

" Add spelling errors to the quickfix list (vim-ingo-library is a dependency).
Plug 'inkarkat/vim-ingo-library' | Plug 'inkarkat/vim-SpellCheck'

" grammar plugin
Plug 'rhysd/vim-grammarous'

" fancy starter vim
Plug 'mhinz/vim-startify'

" wiki in vim
Plug 'liuchengxu/vim-which-key'

" vim-tmux
Plug 'christoomey/vim-tmux-navigator'

" run shell commands async
Plug 'skywind3000/asyncrun.vim'

" vim expand plugin
Plug 'terryma/vim-expand-region'

" intreactive script
Plug 'metakirby5/codi.vim'

" sneak neovim
Plug 'justinmk/vim-sneak'

" nvim colorizer
Plug 'norcalli/nvim-colorizer.lua'

" brackets colorizer
Plug 'junegunn/rainbow_parentheses.vim'

" highlight chars while moving
Plug 'unblevable/quick-scope'

" floating terminal
Plug 'voldikss/vim-floaterm'

" viminspect
Plug 'puremourning/vimspector'




call plug#end()

filetype plugin on

" leader key and it's bindings
let mapleader = ","
nnoremap <leader>ev :vsplit ~/.vimrc<cr>
nnoremap <leader>sv :source ~/.vimrc<cr>
nnoremap <leader>ii :PlugInstall<cr>
" colorscheme
set background=dark
colorscheme gruvbox
if (has("nvim"))
  "For Neovim 0.1.3 and 0.1.4 < https://github.com/neovim/neovim/pull/2198 >
  let $NVIM_TUI_ENABLE_TRUE_COLOR=1
endif

"For Neovim > 0.1.5 and Vim > patch 7.4.1799 < https://github.com/vim/vim/commit/61be73bb0f965a895bfb064ea3e55476ac175162 >
"Based on Vim patch 7.4.1770 (`guicolors` option) < https://github.com/vim/vim/commit/8a633e3427b47286869aa4b96f2bfc1fe65b25cd >
" < https://github.com/neovim/neovim/wiki/Following-HEAD#20160511 >
if (has("termguicolors"))
  set termguicolors
endif


" end colorscheme

syntax on
set cursorline
set number
set relativenumber
set undofile
set incsearch
set ignorecase
set noerrorbells
nmap <C-t> : NERDTreeToggle<CR>

" move easily in split windows
map <c-j> <c-w>j
map <c-k> <c-w>k
map <c-h> <c-w>h
map <c-l> <c-w>l

set shiftwidth=2
set tabstop=2
set softtabstop=2
set expandtab
set smarttab
set autoindent
set smartcase
set noswapfile
set autochdir

if has('nvim')
	tnoremap <C-x> <C-\><C-n>
endif

nnoremap <C-[> :tabprevious<CR>
nnoremap <C-]> :tabnext<CR>
nnoremap <S-k> 20k
nnoremap <S-j> 20j
nnoremap <C-n> :tabnew<CR>
"map <S-l> :vsplit<CR><C-l>
"map <S-j> :split<CR><C-j>
nnoremap <C-x> :q<CR>
nnoremap <C-s> :w<CR>

" comment line map
nnoremap <C-_> :call NERDComment(0,"toggle")<CR>
map <CR><CR> :noh<CR>

" vim asterik plugin config
map *   <Plug>(asterisk-*)
map #   <Plug>(asterisk-#)
map g*  <Plug>(asterisk-g*)
map g#  <Plug>(asterisk-g#)
map z*  <Plug>(asterisk-z*)
map gz* <Plug>(asterisk-gz*)
map z#  <Plug>(asterisk-z#)
map gz# <Plug>(asterisk-gz#)

" better whitespace confg
let g:better_whitespace_enabled=1
let g:strip_whitespace_on_save=1

map <leader><leader>w :ToggleWhitespace<cr>

" easy motion config
map  <leader><leader>f <plug>(easymotion-bd-f)
nmap <leader><leader>f <plug>(easymotion-overwin-f)
map <leader><leader>l <plug>(easymotion-bd-jk)


" Goyo config
nnoremap <leader>f :Goyo<cr>
set pyxversion=3

" folding
autocmd FileType markdown normal zR

" ultisnips
let g:UltiSnipsExpandTrigger="<c-f>"

nnoremap <leader>y "*y
nnoremap <leader>p "*p
nnoremap <leader>Y "+y
nnoremap <leader>P "+p
cnoremap w!! execute 'silent! write !sudo tee % >/dev/null' <bar> edit!


" start coc configs
set cmdheight=2
set updatetime=300
set shortmess+=c

"" tab for trigger completion
function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~ '\s'
endfunction

inoremap <silent><expr> <Tab>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<Tab>" :
      \ coc#refresh()

inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"
inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"


" Use `[g` and `]g` to navigate diagnostics
" Use `:CocDiagnostics` to get all diagnostics of current buffer in location list.
nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)

" GoTo code navigation.
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)
" Use K to show documentation in preview window.
nnoremap <silent> H :call <SID>show_documentation()<CR>

function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  else
    call CocAction('doHover')
  endif
endfunction

" Highlight the symbol and its references when holding the cursor.
autocmd CursorHold * silent call CocActionAsync('highlight')

" Symbol renaming.
nmap <leader>rn <Plug>(coc-rename)

" Formatting selected code.
xmap <leader>f  <Plug>(coc-format-selected)
nmap <leader>f  <Plug>(coc-format-selected)

augroup mygroup
  autocmd!
  " Setup formatexpr specified filetype(s).
  autocmd FileType typescript,json setl formatexpr=CocAction('formatSelected')
  " Update signature help on jump placeholder.
  autocmd User CocJumpPlaceholder call CocActionAsync('showSignatureHelp')
augroup end

" Applying codeAction to the selected region.
" Example: `<leader>aap` for current paragraph
xmap <leader>a  <Plug>(coc-codeaction-selected)
nmap <leader>a  <Plug>(coc-codeaction-selected)

" Remap keys for applying codeAction to the current buffer.
nmap <leader>ac  <Plug>(coc-codeaction)
" Apply AutoFix to problem on the current line.
nmap <leader>qf  <Plug>(coc-fix-current)

" Map function and class text objects
" NOTE: Requires 'textDocument.documentSymbol' support from the language server.
xmap if <Plug>(coc-funcobj-i)
omap if <Plug>(coc-funcobj-i)
xmap af <Plug>(coc-funcobj-a)
omap af <Plug>(coc-funcobj-a)
xmap ic <Plug>(coc-classobj-i)
omap ic <Plug>(coc-classobj-i)
xmap ac <Plug>(coc-classobj-a)
omap ac <Plug>(coc-classobj-a)

" Use CTRL-S forselections ranges.
" Requires 'textDocument/selectionRange' support of LS, ex: coc-tsserver
"nmap <silent> <C-s> <Plug>(coc-range-select)
"xmap <silent> <C-s> <Plug>(coc-range-select)

" Add `:Format` command to format current buffer.
command! -nargs=0 Format :call CocAction('format')

" Add `:Fold` command to fold current buffer.
command! -nargs=? Fold :call     CocAction('fold', <f-args>)

" Add `:OR` command for organize imports of the current buffer.
command! -nargs=0 OR   :call     CocAction('runCommand', 'editor.action.organizeImport')

" Add (Neo)Vim's native statusline support.
" NOTE: Please see `:h coc-status` for integrations with external plugins that
" provide custom statusline: lightline.vim, vim-airline.
set statusline^=%{coc#status()}%{get(b:,'coc_current_function','')}

" Mappings for CoCList
" Show all diagnostics.
nnoremap <silent><nowait> <space>a  :<C-u>CocList diagnostics<cr>
" Manage extensions.
nnoremap <silent><nowait> <space>e  :<C-u>CocList extensions<cr>
" Show commands.
nnoremap <silent><nowait> <space>c  :<C-u>CocList commands<cr>
" Find symbol of current document.
nnoremap <silent><nowait> <space>o  :<C-u>CocList outline<cr>
" Search workspace symbols.
nnoremap <silent><nowait> <space>s  :<C-u>CocList -I symbols<cr>
" Do default action for next item.
nnoremap <silent><nowait> <space>j  :<C-u>CocNext<CR>
" Do default action for previous item.
nnoremap <silent><nowait> <space>k  :<C-u>CocPrev<CR>
" Resume latest coc list.
nnoremap <silent><nowait> <space>p  :<C-u>CocListResume<CR>

" end coc config

"" start vim-which-key
nnoremap <silent> <leader> :WhichKey ','<CR>
" By default timeoutlen is 1000 ms
set timeoutlen=500

" Define prefix dictionary
let g:which_key_map =  {}

let g:which_key_map['w'] = {
      \ 'name' : '+windows' ,
      \ 'w' : ['<C-W>w'     , 'other-window']          ,
      \ 'd' : ['<C-W>c'     , 'delete-window']         ,
      \ '-' : ['<C-W>s'     , 'split-window-below']    ,
      \ '|' : ['<C-W>v'     , 'split-window-right']    ,
      \ '2' : ['<C-W>v'     , 'layout-double-columns'] ,
      \ 'h' : ['<C-W>h'     , 'window-left']           ,
      \ 'j' : ['<C-W>j'     , 'window-below']          ,
      \ 'l' : ['<C-W>l'     , 'window-right']          ,
      \ 'k' : ['<C-W>k'     , 'window-up']             ,
      \ 'H' : ['<C-W>5<'    , 'expand-window-left']    ,
      \ 'J' : [':resize +5'  , 'expand-window-below']   ,
      \ 'L' : ['<C-W>5>'    , 'expand-window-right']   ,
      \ 'K' : [':resize -5'  , 'expand-window-up']      ,
      \ '=' : ['<C-W>='     , 'balance-window']        ,
      \ 's' : ['<C-W>s'     , 'split-window-below']    ,
      \ 'v' : ['<C-W>v'     , 'split-window-below']    ,
      \ '?' : ['Windows'    , 'fzf-window']            ,
      \ }

let g:which_key_map['s'] = {
    \ 'name' : '+search',
    \ '\' : ['\','forward-search'],
    \ }

call which_key#register(',', "g:which_key_map")
"" end vim-which-key

" start fzf
let g:fzf_layout = { 'window': { 'width': 0.9, 'height': 0.6 } }

nmap gb <c-o>
" remap esc to jj
inoremap jj <Esc>

nnoremap <c-m> <c-w>
noremap <c-w>z <c-w>_ \| <c-w>\|
nnoremap <c-m>z :call ZoomPane()<cr>
let g:zoomflag = 0
function! ZoomPane()
    if g:zoomflag
        let g:zoomflag = 0
        call feedkeys("\<c-w>z")
    else
        let g:zoomflag = 1
        call feedkeys("\<c-w>=")
    endif
endfunction

" nvim colorize
lua require'colorizer'.setup()

" rainbow colorize
let g:rainbow#pairs = [['(', ')'], ['[', ']'],['{','}']]
autocmd FileType * RainbowParentheses

" highlight quick scope plugin
" Trigger a highlight in the appropriate direction when pressing these keys:
let g:qs_highlight_on_keys = ['f', 'F', 't', 'T']

highlight QuickScopePrimary guifg='#00C7DF' gui=underline ctermfg=155 cterm=underline
highlight QuickScopeSecondary guifg='#afff5f' gui=underline ctermfg=81 cterm=underline

let g:qs_max_chars=150

" Get text in files with Rg
function! RipgrepFzf(query, fullscreen)
  let command_fmt = 'rg --column --line-number --no-heading --color=always --smart-case -- %s || true'
  let initial_command = printf(command_fmt, shellescape(a:query))
  let reload_command = printf(command_fmt, '{q}')
  let spec = {'options': ['--phony', '--query', a:query, '--bind', 'change:reload:'.reload_command]}
  call fzf#vim#grep(initial_command, 1, fzf#vim#with_preview(spec), a:fullscreen)
endfunction

command! -nargs=* -bang RG call RipgrepFzf(<q-args>, <bang>0)

command! -bang -nargs=* Rg
  \ call fzf#vim#grep(
  \   'rg --column --line-number --no-heading --color=always --smart-case '.shellescape(<q-args>), 1,
  \   fzf#vim#with_preview(), <bang>0)

let g:fzf_layout = {'up':'~90%', 'window': { 'width': 0.8, 'height': 0.8,'yoffset':0.5,'xoffset': 0.5, 'highlight': 'Todo', 'border': 'sharp' } }

" vimspector config
nmap <leader>b <Plug>VimspectorToggleBreakpoint
