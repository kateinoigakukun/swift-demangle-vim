function! swift_demangle#get_options()
    return get(g:, 'swift_demangle#options', [])
endfunction

function! swift_demangle#report()
    let l:name = expand("<cword>")
    echo swift_demangle#demangle(l:name)
endfunction

function! swift_demangle#demangle(mandled_name)
    let l:options = swift_demangle#get_options()
    let l:swift_path = get(g:, 'swift_demangle#swift_path', '')
    let l:cmd = swift_demangle#demangle_command(l:swift_path, a:mandled_name, l:options)
    return system(join(l:cmd, " "))
endfunction

function! swift_demangle#demangle_command(swift_path, mandled_name, options)
    let l:cmd = [a:swift_path, 'demangle', a:mandled_name]
    call extend(l:cmd, a:options)
    return l:cmd
endfunction
