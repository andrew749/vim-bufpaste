if !has('python')
    finish
endi

function! PasteImageBuffer()
"paste the contents
    let image_name = ""

    call inputsave()
    let name = input('Enter image name')
    call inputrestore()

    pyfile bufpaste.py

    put = '!['. name . '](' . image_name . ' '. name . ')'
endfunc

command! PIB call PasteImageBuffer()
