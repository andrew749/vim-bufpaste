if !has('python')
    finish
endi

let s:path = fnamemodify(resolve(expand('<sfile>:p')), ':h') . '/bufpaste.py'

imap <Leader>ip <C-R>=PasteImageBuffer()<C-M>

" prompt user for input
function! PasteImageBuffer()
"paste the contents
    let image_name = ""


    execute 'pyfile '. s:path
    :put ='![](' . image_name . ')'
endfunc

command! PIB call PasteImageBuffer()
