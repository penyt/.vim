" --- Plugins ---
" Plugin Manager: vim-plug (https://github.com/junegunn/vim-plug)
" Installation: https://github.com/junegunn/vim-plug?tab=readme-ov-file#installation

call plug#begin()
Plug 'itchyny/lightline.vim'  " https://github.com/itchyny/lightline.vim
Plug 'morhetz/gruvbox'        " https://github.com/morhetz/gruvbox
Plug 'junegunn/fzf'           " https://github.com/junegunn/fzf
Plug 'junegunn/fzf.vim'       " https://github.com/junegunn/fzf.vim
Plug 'yegappan/lsp'           " https://github.com/yegappan/lsp
Plug 'airblade/vim-gitgutter' " https://github.com/airblade/vim-gitgutter
call plug#end()


" --- Source ---
source ~/.vim/options.vim     " Basic options
source ~/.vim/keybinds.vim    " Keybind
source ~/.vim/terminal.vim    " my terminal vimscript
source ~/.vim/plugin-lightline.vim
source ~/.vim/plugin-fzf.vim
source ~/.vim/plugin-lsp.vim

