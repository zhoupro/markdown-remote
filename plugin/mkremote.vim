
if exists('g:loaded_mkremote')
    finish
endif
let g:loaded_mkremote = 1
au BufEnter *.{md,mkd,markdown,mdown,mkdn,mdwn} call  mkremote#serverStart()
