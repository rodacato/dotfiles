"mark syntax errors with :signs
let g:syntastic_enable_signs=1
"automatically jump to the error when saving the file
let g:syntastic_auto_jump=0
"show the error list automatically
let g:syntastic_auto_loc_list=1
"don't care about warnings
let g:syntastic_quiet_warnings=0
"highlight errors
let g:syntastic_enable_highlighting = 1
"use rubocop with the default ruby checker (mri):
let g:syntastic_ruby_checkers = ['mri', 'rubocop']



let g:syntastic_eruby_checkers = ['ruby']
let g:syntastic_scss_checkers = ['scss_lint']
