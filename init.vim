syntax on
filetype plugin indent on    " required

set autoindent
set backspace=indent,eol,start
set complete-=i
set cursorline
set smarttab
set tabstop=4
set shiftwidth=4
set expandtab "http://vim.wikia.com/wiki/VimTip12
set encoding=utf8
set number
set clipboard+=unnamedplus " use system clipboard
set hls
set textwidth=100
set backup
set swapfile
set backupdir=~/.vim-tmp
set directory=~/.vim-tmp
set shell=/bin/bash
"set listchars=tab:▸\ ,eol:¬
set listchars=eol:¬,tab:>-,trail:~,extends:>,precedes:<,space:•
set list



set runtimepath^=~/.vimclean runtimepath+=~/.vimclean/after
let &packpath = &runtimepath



" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
"call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
call vundle#begin('~/.vimclean/bundles')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
" Then the rest of the Plugins
"Plugin 'roxma/nvim-completion-manager'
Plugin 'tpope/vim-salve'
Plugin 'tpope/vim-projectionist'
Plugin 'tpope/vim-dispatch'
Plugin 'tpope/vim-fugitive'
Plugin 'thirtythreeforty/lessspace.vim'
Plugin 'easymotion/vim-easymotion'
Plugin 'airblade/vim-gitgutter'
Plugin 'kien/rainbow_parentheses.vim'
Plugin 'junegunn/vim-easy-align'
Plugin 'spacehi.vim'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'scrooloose/syntastic'
Plugin 'scrooloose/nerdtree'
Plugin 'mhinz/vim-startify'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
"Plugin 'Xuyuanp/nerdtree-git-plugin'
Plugin 'plasticboy/vim-markdown'

" Clojure stuff
"""Plugin 'venantius/vim-cljfmt'
"Plugin 'michaelblume/vim-cljfmt'
"""Plugin 'VimClojure'
Plugin 'guns/vim-clojure-static'
"""Plugin 'clojure-vim/vim-cider'
"Plugin 'SevereOverfl0w/clj-refactor.nvim'
Plugin 'snoe/clj-refactor.nvim'
Plugin 'tpope/vim-fireplace'
Plugin 'aclaimant/syntastic-joker'


" paired brackets
"Plugin 'jiangmiao/auto-pairs'
"Plugin 'shaunlebron/parinfer'
Plugin 'eraserhd/parinfer-rust'

" autocompleters
Plugin 'Shougo/deoplete.nvim'
Plugin 'clojure-vim/async-clj-omni'

Plugin 'godlygeek/tabular'
Plugin 'vim-scripts/sql.vim--Stinson'
"Plugin 'ap/vim-css-color'
Plugin 'gko/vim-coloresque'
Plugin 'wvffle/vimterm'

Plugin 'bronson/vim-trailing-whitespace'
Plugin 'ekalinin/Dockerfile.vim'
"Plugin 'powerman/vim-plugin-autosess'

" All of your Plugins must be added before the following line
call vundle#end()            " required


" To ignore plugin indent changes, instead use:
" filetype plugin on


" Put your non-Plugin stuff after this line
"-----------------------------------------------------
set wildchar=<TAB>

"-----------------------------------------------------
" Keep search matches in the middle of the window.
nnoremap n nzzzv
nnoremap N Nzzzv

"-----------------------------------------------------
"make space in normal mode add space
nnoremap <Space> i<Space><Esc>l


"-----------------------------------------------------
nnoremap <F1> :call vimterm#toggle() <CR>
"map § :call vimterm#toggle() <CR>

"-----------------------------------------------------
"colorscheme murphy
"Replaces the Dark Red to Soft Red
let g:alduin_Shout_Windhelm = 1
"colorscheme alduin
"let g:sierra_Sunset = 1
"colorscheme sierra
colors deus

autocmd syntax * SpaceHi
let g:spacehi_tabcolor="ctermfg=1 ctermbg=1  cterm=underline"
let g:spacehi_tabcolor=g:spacehi_tabcolor . " guifg=red guibg=blue"

"-----------------------------------------------------
" Deoplete for async word coomplete
let g:deoplete#enable_at_startup = 1
let g:deoplete#keyword_patterns = {}
let g:deoplete#keyword_patterns.clojure = '[\w!$%&*+/:<=>?@\^_~\-\.#]*'

"-----------------------------------------------------
" Here's the vimclojure stuff. You'll need to adjust the NailgunClient
" setting if you're on windows or have other problems.
let vimclojure#FuzzyIndent=1
let vimclojure#HighlightBuiltins=1
let vimclojure#HighlightContrib=1
let vimclojure#DynamicHighlighting=1
let vimclojure#ParenRainbow=1
"let vimclojure#WantNailgun = 1
"let clj_want_gorilla = 1
"let vimclojure#NailgunClient = "/Users/adam/bin/ng"
" Paredit
let g:paredit_mode = 0
"https://github.com/guns/vim-clojure-static
let g:clojure_align_multiline_strings = 1
let g:clojure_align_subforms = 1
let g:clojure_fuzzy_indent = 1
let g:clojure_maxlines = 800
let g:clojure_fuzzy_indent_patterns = ['^with', '^def', '^let']
let g:clojure_fuzzy_indent_blacklist = ['-fn$', '\v^with-%(meta|out-str|loading-context)$']


"-----------------------------------------------------
"  EasyAlign
" https://github.com/junegunn/vim-easy-align

nmap ga <Plug>(EasyAlign)
xmap ga <Plug>(EasyAlign)

"-----------------------------------------------------
" RAINBOW PARENTHESIS
" Bundle 'bundle/rainbow_parentheses.vim'
"kien/rainbow_parentheses.vim
let g:rbpt_colorpairs = [
    \ ['brown',       'RoyalBlue3'],
    \ ['darkgray',    'DarkOrchid3'],
    \ ['darkgreen',   'firebrick3'],
    \ ['darkcyan',    'LightSkyBlue3'],
    \ ['darkred',     'SeaGreen3'],
    \ ['darkmagenta', 'DarkOrchid3'],
    \ ['brown',       'firebrick3'],
    \ ['gray',        'RoyalBlue3'],
    \ ['darkmagenta', 'DarkOrchid3'],
    \ ['darkgreen',   'DeepSkyBlue3'],
    \ ['darkcyan',    'SeaGreen3'],
    \ ['darkred',     'DarkOrchid3'],
    \ ['red',         'firebrick3'],
    \ ]

let g:rbpt_max = 16
let g:rbpt_loadcmd_toggle = 0
au VimEnter * RainbowParenthesesToggle
au Syntax * RainbowParenthesesLoadRound
au Syntax * RainbowParenthesesLoadSquare
au Syntax * RainbowParenthesesLoadBraces

"-----------------------------------------------------
" ------ Syntastic ---------
" https://github.com/scrooloose/syntastic
"

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_clojure_checkers = ["joker"]
" let g:syntastic_yaml_checkers = ["yamllint"]


"-----------------------------------------------------
" CtrlP (from https://kien.github.io/ctrlp.vim/)
set runtimepath^=~/.vim/bundle/ctrlp.vim
let g:ctrlp_working_path_mode = 'ca'
let g:ctrlp_user_command = ['.git', 'cd %s && git ls-files -co --exclude-standard']
let g:ctrlp_user_command = 'find %s -type f'        " MacOSX/Linux

"-----------------------------------------------------
" NERDTree
"ca NERDTreeToggle nt
map , :NERDTreeToggle
let NERDTreeShowHidden=1
let NERDTreeShowBookmarks=1
let NERDTreeDirArrows=1
let NERDTreeIgnore = ['\.DS_Store']
" NERDTress File highlighting
function! NERDTreeHighlightFile(extension, fg, bg, guifg, guibg)
 exec 'autocmd filetype nerdtree highlight ' . a:extension .' ctermbg='. a:bg .' ctermfg='. a:fg .' guibg='. a:guibg .' guifg='. a:guifg
 exec 'autocmd filetype nerdtree syn match ' . a:extension .' #^\s\+.*'. a:extension .'$#'
endfunction
" close window if nerdtree is only wondow left open
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
call NERDTreeHighlightFile('jade', 'green', 'none', 'green', '#151515')
call NERDTreeHighlightFile('ini', 'yellow', 'none', 'yellow', '#151515')
call NERDTreeHighlightFile('md', 'blue', 'none', '#3366FF', '#151515')
call NERDTreeHighlightFile('yml', 'yellow', 'none', 'yellow', '#151515')
call NERDTreeHighlightFile('config', 'yellow', 'none', 'yellow', '#151515')
call NERDTreeHighlightFile('conf', 'yellow', 'none', 'yellow', '#151515')
call NERDTreeHighlightFile('json', 'yellow', 'none', 'yellow', '#151515')
call NERDTreeHighlightFile('html', 'yellow', 'none', 'yellow', '#151515')
call NERDTreeHighlightFile('styl', 'cyan', 'none', 'cyan', '#151515')
call NERDTreeHighlightFile('css', 'cyan', 'none', 'cyan', '#151515')
call NERDTreeHighlightFile('coffee', 'Red', 'none', 'red', '#151515')
call NERDTreeHighlightFile('js', 'Red', 'none', '#ffa500', '#151515')
call NERDTreeHighlightFile('clj', 'Magenta', 'none', '#ff00ff', '#151515')
"autocmd VimEnter * NERDTree | wincmd p
"nmap <silent> <C-1> :NERDTreeToggle<CR>

"-----------------------------------------------------
" startify settings
let g:startify_empty_buffer_key = 'o'
let g:startify_session_dir = '~/.vimclean/session'
let g:startify_show_sessions = 1
let g:startify_show_files = 1
let g:startify_show_files_number = 10
let g:startify_bookmarks = ['~/.config/nvim/init.vim', '~/Projects/', '~/Documents/wefarm' ]

"-----------------------------------------------------
" the gutter
if exists('+colorcolumn')
   let &colorcolumn="100,".join(range(120,999),",")
   ":hi ColorColumn guibg=#2d2d2d ctermbg=246
   :hi ColorColumn guibg=#000000 ctermbg=246
else
  au BufWinEnter * let w:m2=matchadd('ErrorMsg', '\%>80v.\+', -1)
endif


"-----------------------------------------------------
" Commenting blocks of code.
autocmd FileType c,cpp,java,scala       let b:comment_leader = '// '
autocmd FileType ""                     let b:comment_leader = '; '
autocmd FileType sh,ruby,python         let b:comment_leader = '# '
autocmd FileType conf,fstab             let b:comment_leader = '# '
autocmd FileType tex                    let b:comment_leader = '% '
autocmd FileType mail                   let b:comment_leader = '> '
autocmd FileType clj,clojure,cljs,cljx  let b:comment_leader = '; '
autocmd FileType vim                    let b:comment_leader = '" '
noremap <silent> ,cc :<C-B>silent <C-E>s/^/<C-R>=escape(b:comment_leader,'\/')<CR>/<CR>:nohlsearch<CR>
noremap <silent> ,cu :<C-B>silent <C-E>s/^\V<C-R>=escape(b:comment_leader,'\/')<CR>//e<CR>:nohlsearch<CR>


"-----------------------------------------------------
if !exists('g:airline_symbols')
  let g:airline_symbols = {}
endif
let g:airline_powerline_fonts = 1
let g:airline_symbols.space = "\ua0"
let g:airline#extensions#tabline#enabled = 1
let g:airline_theme='badwolf'

"-----------------------------------------------------
" vim-markdown
let g:vim_markdown_folding_disabled = 1
let g:vim_markdown_frontmatter = 1
let g:vim_markdown_json_frontmatter = 1

"-----------------------------------------------------
"highlight Cursor guifg=white guibg=black
"highlight iCursor guifg=white guibg=steelblue
"set guicursor=n-v-c:block-Cursor
"set guicursor+=i:ver100-iCursor
"set guicursor+=n-v-c:blinkon0

"-----------------------------------------------------
" Save and restore sessions
fu! SaveSess()
    execute 'mksession! /tmp/.session.vim'
endfunction

fu! RestoreSess()
if filereadable('/tmp/.session.vim')
    execute 'so /tmp/.session.vim'
    if bufexists(1)
        for l in range(1, bufnr('$'))
            if bufwinnr(l) == -1
                exec 'sbuffer ' . l
            endif
        endfor
    endif
endif
endfunction

"autocmd VimLeave * call SaveSess()
"autocmd VimEnter * nested call RestoreSess()

" Save session on quitting Vim
autocmd VimLeave * NERDTreeClose
"autocmd VimLeave * mksession! '/tmp/.session.vim'

" Restore session on starting Vim
"autocmd VimEnter * call RestoreSess()
"autocmd VimEnter * NERDTree
