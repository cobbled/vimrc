"" neocomplete
let g:neocomplete#enable_at_startup = 1
let g:neocomplete#enable_smart_case = 1


"" work with clang_complete
let s:clang_complete_path = expand("~") . "/.vim/bundle/clang_complete"

if isdirectory(s:clang_complete_path)
    if !exists('g:neocomplete#force_omni_input_patterns')
        let g:neocomplete#force_omni_input_patterns = {}
    endif
    let g:neocomplete#force_overwrite_completefunc = 1
    let g:neocomplete#force_omni_input_patterns.c =
                \ '[^.[:digit:] *\t]\%(\.\|->\)\w*'
    let g:neocomplete#force_omni_input_patterns.cpp =
                \ '[^.[:digit:] *\t]\%(\.\|->\)\w*\|\h\w*::\w*'
    let g:neocomplete#force_omni_input_patterns.objc =
                \ '\[\h\w*\s\h\?\|\h\w*\%(\.\|->\)'
    let g:neocomplete#force_omni_input_patterns.objcpp =
                \ '\[\h\w*\s\h\?\|\h\w*\%(\.\|->\)\|\h\w*::\w*'
    let g:clang_complete_auto = 0
    let g:clang_auto_select = 0
    "let g:clang_use_library = 1

    " delete tab key mapping
    let g:clang_make_default_keymappings = 0

    let s:llvm33 = '/usr/lib/llvm-3.3/lib/'
    let s:llvm34 = '/usr/lib/llvm-3.4/lib/'
    if filereadable(s:llvm34 . '/libclang.so')
        let g:clang_library_path = s:llvm34
    elseif filereadable(s:llvm33 . '/libclang.so')
        let g:clang_library_path = s:llvm33
    else
    endif
endif
