" --------------------------------
" Add our plugin to the path
" --------------------------------
python import sys
python import vim
python sys.path.append(vim.eval('expand("<sfile>:h")'))

" add paths
python import os,sys,inspect
python currentdir = os.path.dirname(os.path.abspath(inspect.getfile(inspect.currentframe())))
python parentdir = os.path.dirname(currentdir)
python sys.path.insert(0,parentdir)

" --------------------------------
"  Function(s)
" --------------------------------
function! ListifyOrder(selection_or_buffer)
python << endPython

from vim_listify import *

def get_visual_selection():
    buf = vim.current.buffer
    starting_line_num, col1 = buf.mark('<')
    ending_line_num, col2 = buf.mark('>')
    return vim.eval('getline({}, {})'.format(starting_line_num, ending_line_num))

def get_correct_buffer(buffer_type):
    if buffer_type == "buffer":
        return vim.current.buffer
    elif buffer_type == "selection":
        return get_visual_selection()

def listify_buffer_with_order():
    buf = get_correct_buffer(vim.eval("a:selection_or_buffer"))
    vim_listify_order_buffer_contents(buf)

def listify_buffer_with_unorder():
    buf = get_correct_buffer(vim.eval("a:selection_or_buffer"))
    vim_listify_unorder_buffer_contents(buf)

listify_buffer_with_unorder()

endPython
endfunction


" --------------------------------
"  Expose our commands to the user
" --------------------------------


" --------------------------------
"  Expose our commands to the user
" --------------------------------


" --------------------------------
"  Expose our commands to the user
" --------------------------------
command! ListifyOrder call ListifyOrder('buffer')
command! -range ListifyOrder call ListifyOrder('selection')
