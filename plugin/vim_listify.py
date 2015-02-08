#!/usr/bin/env python
# Author: Lin Dong
# Date: Feb 7, 2014

def vim_listify_order_buffer_contents(buffer_contents=[]):
   return [str(i+1)+'. '+ _content.encode('utf-8') for i, _content in enumerate(buffer_contents)]

def vim_listify_unorder_buffer_contents(buffer_contents=[]):
   return ['* '+ _content for _content in buffer_contents]
