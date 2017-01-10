if !has('python')
    finish
endi

let s:path = fnamemodify(resolve(expand('<sfile>:p')), ':h') . '/bufpaste.py'

imap <C-\> <C-R>=PasteImageBuffer()<C-M>
nmap <C-\> "=PasteImageBuffer()<C-M>p

" prompt user for input
function! PasteImageBuffer()
"paste the contents
    let image_name = ""

    call inputsave()
    let name = input('Enter image name: ')
    call inputrestore()

    if name == ""
        throw "Need a valid image name"
    endi

    execute 'pyfile '. s:path
    return  '!['. name . '](' . image_name . ' \"'. name . '\")'

endfunc

command! PIB call PasteImageBuffer()
