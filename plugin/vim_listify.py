#!/usr/bin/env python
# Author: Lin Dong
# Date: Feb 7, 2014

def vim_listify_order_buffer_contents(buffer_contents=[]):
    for i, _content in enumerate(buffer_contents):
        buffer_contents[i] = str(i+1)+'. '+ _content

def vim_listify_unorder_buffer_contents(buffer_contents=[]):
    for i, _content in enumerate(buffer_contents):
        buffer_contents[i] = '* '+ _content
