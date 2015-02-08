" --------------------------------
"  Expose our commands to the user
" --------------------------------
command! ListifyOrderBuffer call vim_listify#Listify('buffer', 'order')
command! -range ListifyOrderSelection call vim_listify#Listify('selection', 'order')
command! ListifyUnorderBuffer call vim_listify#Listify('buffer', 'unorder')
command! -range ListifyUnorderSelection call vim_listify#Listify('selection', 'unorder')
