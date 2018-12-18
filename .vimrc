syntax enable
filetype plugin indent on
set termguicolors

" Plugins {{{
function! s:SetupVAM() " {{{
  let c = get(g:, 'vim_addon_manager', {})
  let g:vim_addon_manager = c
  let c.plugin_root_dir = expand('$HOME', 1) . '/.vim/vim-addons'
  let &rtp.=(empty(&rtp)?'':',').c.plugin_root_dir.'/vim-addon-manager'
  if !isdirectory(c.plugin_root_dir.'/vim-addon-manager/autoload')
    execute '!git clone --depth=1 git://github.com/MarcWeber/vim-addon-manager' shellescape(c.plugin_root_dir.'/vim-addon-manager', 1)
  endif " }}}
  call vam#ActivateAddons([
  \  'github:isruslan/vim-es6',
  \  'github:joshdick/onedark.vim',
  \], {'auto_install' : 1})
endfunction
call s:SetupVAM()
" }}}

set background=dark                     " Sets a dark background
set backspace=indent,eol,start          " bs anything
" let base16colorspace=256
" colorscheme base16-default-dark
colorscheme onedark
highlight Normal guibg=#000000

set mouse=a
set hidden
set softtabstop=4
set tabstop=4
set shiftwidth=4
set expandtab
