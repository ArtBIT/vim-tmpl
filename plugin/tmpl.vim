if exists('g:loaded_tmpl') | finish | endif
let g:loaded_tmpl = 1

function tmpl#Call(...)
    let s:path = expand('<sfile>:p:h')
    return system(s:path . "/tmpl/tmpl " . join(a:000, ' '))
endfunction

function tmpl#Read(...)
    let @a=call('tmpl#Call', a:000)
    normal! G
    exe "put a"
endfunction

if !exists(':Tmpl')
    command -nargs=? Tmpl call tmpl#Read(<f-args>)
endif

