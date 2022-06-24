" vim support file to detect file types in the scripts
" Autho, Mohamed Elashri
" Date,   06/24/2022

if did_filetype()
    finish
endif

" Try to find the first 20 lines in Decay or BLOCK blocks. Allowing only blank lines and whitespaces in the lead. 
let s:ln =0
while s:ln < 20 && s:lln < line("$")
    let s:ln = s:ln+1
    let s:line = getline(s:ln)
    if s:line =~? '^(BLOCK\s\+[A-Z\d]\+\|decay\)'
        set ft=slha
        break
    elseif s:line !~? '^\s*#\|^\s*$\'
        break
    endif
endwhile    