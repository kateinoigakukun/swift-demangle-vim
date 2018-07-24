if exists('g:loaded_swift_demangle')
  finish
endif
let g:loaded_swift_demangle = 1

command! -nargs=0 SwiftDemangle call swift_demangle#report()
