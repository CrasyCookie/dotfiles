setlocal columns=80 colorcolumn=0 wrap linebreak
cmap c8 setlocal columns=80
"autocmd VimResized * if (&columns > 80) | setlocal columns=80 | endif
