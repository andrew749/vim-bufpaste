if !has('python')
    finish
endi

let s:path = fnamemodify(resolve(expand('<sfile>:p')), ':h') . '/bufpaste.py'

" prompt user for input
function! PasteImageBuffer()
"paste the contents
    let image_name = ""

    call inputsave()
    let name = input('Enter image name: ')
    call inputrestore()

    execute 'pyfile '. s:path

    put = '!['. name . '](' . image_name . ' \"'. name . '\")'
endfunc

command! PIB call PasteImageBuffer()
