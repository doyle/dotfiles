syntax enable
set background=dark
"colorscheme solarized
colorscheme cobalt
if has("gui_running")
  set transparency=15
endif

set runtimepath^=~/.vim/bundle/ctrlp.vim
set number
set cursorline
set colorcolumn=80

" Make tabs 2 spaces
set smartindent
set softtabstop=2
set shiftwidth=2
set expandtab


set hlsearch

set laststatus=2                             " always show statusbar  
set statusline=  
set statusline+=%-10.3n\                     " buffer number  
set statusline+=%f\                          " filename   
set statusline+=%h%m%r%w                     " status flags  
set statusline+=\[%{strlen(&ft)?&ft:'none'}] " file type  
set statusline+=%-14(%l,%c%V%)               " line, character  
set statusline+=%<%P                         " file position
