set laststatus=2
let g:lightline = {
      \ 'colorscheme' : 'wombat',
      \ 'active': {
      \   'left': [ [ 'mode', 'paste' ],
      \             [ 'gitbranch', 'readonly', 'filename', 'modified' ] ],
      \   'right': [ [ 'lineinfo' ], [ 'fileformat', 'fileencoding', 'filetype' ] ]
      \ }
     \ }

function! LightlineFilename()
  return expand('%:t') !=# '' ? expand('%:t') : '[No Name]'
endfunction
