if exists('g:loaded_tmpl') | finish | endif
let g:loaded_tmpl = 1
let s:path = expand('<sfile>:p:h')

function tmpl#Call(...)
    " Inject fullpath as the second argument
    let fullPath = expand("%:p")
    let args = copy(a:000)
    call insert(args, [fullPath], 1) 
    return system(s:path . "/../tmpl/tmpl " . join(args, ' '))
endfunction

function tmpl#Read(...)
    let @a=call('tmpl#Call', a:000)
    normal! G
    exe "put! a"
endfunction

if !exists(':Tmpl')
    command -nargs=? Tmpl call tmpl#Read(<f-args>)
endif

