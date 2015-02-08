" --------------------------------
"  Expose our commands to the user
" --------------------------------
command! ListifyOrderBuffer call Listify('buffer', 'order')
command! -range ListifyOrderSelection call Listify('selection', 'order')
command! ListifyUnorderBuffer call Listify('buffer', 'unorder')
command! -range ListifyUnorderSelection call Listify('selection', 'unorder')
