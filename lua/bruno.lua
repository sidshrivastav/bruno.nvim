function! RunBruCommand(...)
    let command = 'bru ' . a:1
    for arg in a:000[1:]
        let command .= ' ' . arg
    endfor

" Define a command to run Bru commands "
command! -nargs=* bru call RunBruCommand(<f-args>)

