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
"  Function
" --------------------------------
function! vim_listify#Listify(selection_or_buffer, order)
python << endPython

def listify(buffer_type, order_type):
    if buffer_type == "buffer":
        if order_type == 'order':
            for count in xrange(len(vim.current.buffer)):
                vim.current.buffer[count] = str(count+1)+'. ' + vim.current.buffer[count]
        else:
            for count in xrange(len(vim.current.buffer)):
                vim.current.buffer[count] = '* ' + vim.current.buffer[count]
    elif buffer_type == "selection":
        buf   = vim.current.buffer # the buffer
        start = buf.mark('<')[0]-1      # start selection tuple: (1,5)
        end   = buf.mark('>')[0]      # end selection tuple: (2,7)
        if order_type == 'order':
            for count, i in enumerate(range(start, end)):
                vim.current.buffer[i] = str(count+1)+'. ' + vim.current.buffer[i]
        else:
            for count, i in enumerate(range(start, end)):
                vim.current.buffer[i] = '* ' + vim.current.buffer[i]

listify(vim.eval("a:selection_or_buffer"), vim.eval("a:order"))

endPython
endfunction
