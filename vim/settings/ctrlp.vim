let g:ctrlp_custom_ignore = '\.git$\|\.hg$\|\.svn$'
let g:ctrlp_user_command = ['.git', 'cd %s && git ls-files . --cached --exclude-standard --others']

" We don't want to use Ctrl-p as the mapping because
" it interferes with YankRing (paste, then hit ctrl-p)
let g:ctrlp_map = ',t'
nnoremap <silent> ,t :CtrlP<CR>

" Additional mapping for buffer search
nnoremap <silent> ,b :CloseSingleConque<CR>:CtrlPBuffer<cr>
nnoremap <silent> <C-b> :CloseSingleConque<CR>:CtrlPBuffer<cr>

" Cmd-Shift-P to clear the cache
nnoremap <silent> <D-P> :ClearCtrlPCache<cr>

" Don't jump to already open window. This is annoying if you are maintaining
" several Tab workspaces and want to open two windows into the same file.
let g:ctrlp_switch_buffer = 0

" Idea from : http://www.charlietanksley.net/blog/blog/2011/10/18/vim-navigation-with-lustyexplorer-and-lustyjuggler/
" Open CtrlP starting from a particular path, making it much
" more likely to find the correct thing first. mnemonic 'jump to [something]'
map ,ja :CloseSingleConque<CR>:CtrlP app/assets<CR>
map ,jm :CloseSingleConque<CR>:CtrlP app/models<CR>
map ,jc :CloseSingleConque<CR>:CtrlP app/controllers<CR>
map ,jv :CloseSingleConque<CR>:CtrlP app/views<CR>
map ,jh :CloseSingleConque<CR>:CtrlP app/helpers<CR>
map ,jl :CloseSingleConque<CR>:CtrlP lib<CR>
map ,jp :CloseSingleConque<CR>:CtrlP public<CR>
map ,js :CloseSingleConque<CR>:CtrlP spec<CR>
map ,jf :CloseSingleConque<CR>:CtrlP fast_spec<CR>
map ,jd :CloseSingleConque<CR>:CtrlP db<CR>
map ,jC :CloseSingleConque<CR>:CtrlP config<CR>
map ,jV :CloseSingleConque<CR>:CtrlP vendor<CR>
map ,jF :CloseSingleConque<CR>:CtrlP factories<CR>
map ,jT :CloseSingleConque<CR>:CtrlP test<CR>

"Cmd-Shift-(M)ethod - jump to a method (tag in current file)
"Ctrl-m is not good - it overrides behavior of Enter
nnoremap <silent> <D-M> :CloseSingleConque<CR>:CtrlPBufTag<CR>
