
function! SaveFile()
    call writefile(getline(1,'$'),'/tmp/hello.md','b')
endfunc

let g:auto_save = 1
let g:auto_save_postsave_hook = 'call SaveFile()'

let s:path_to_server = expand('<sfile>:p:h') . "/server/load.sh"
let s:path_to_go = expand('<sfile>:p:h') . "/server"
fun! mkremote#serverStart() abort "function for starting the server
    let l:cmd = "bash   " . s:path_to_server . " start " . s:path_to_go
    echo cmd
    call system(l:cmd . " >/dev/null 2>&1 &")
endfun

