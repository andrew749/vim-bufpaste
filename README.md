# BufPaste
A vim plugin based on python3.
Simply copy an image from your clipboard and paste a markdown
formatted string in a file. Images are placed in a folder called `.images/`

NOTE: This only works for Mac and Windows due to a dependency on getting
clipboard data.

## Install
Put folder into vim's plugin directory, or add 'Plugin kozmers/vim-bufpaste' into .vimrc if the Vundle plugin is installed.   
Dependencies: 
  1. Pillow (Python Imaging Library)  
  2. python3 supported by vim.  
    > :echo has('python3')
    > 1
    > :version
    > +python3/dyn

```
pip install pillow
```

## Usage

BufPaste provides a <leader>ip in vim's insert-mode that will prompt you for a filename for the
image to be created. Make sure you have an image in the buffer.
