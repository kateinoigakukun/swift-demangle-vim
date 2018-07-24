function! swift_demangle#get_options()
    return get(g:, 'swift_demangle#options', [])
endfunction

function! swift_demangle#report()
    let l:name = expand("<cword>")
    echo swift_demangle#demangle(l:name)
endfunction

function! swift_demangle#demangle(mandled_name)
    let l:options = swift_demangle#get_options()
    let l:cmd = swift_demangle#demangle_command(a:mandled_name, l:options)
    return system(l:cmd)
endfunction

function! swift_demangle#demangle_command(mandled_name, options)
    let l:cmd = ['swift', 'demangle', a:mandled_name]
    call extend(l:cmd, a:options)
    return l:cmd
endfunction
