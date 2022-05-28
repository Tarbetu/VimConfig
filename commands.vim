" Convert to pdf
:command ConvertToPdf !pandoc % -o '%:t'.'pdf'

" I'm a Firefox user.
" It opens the file in Firefox.
" I direct the output to /dev/null because I want to close the dialog
:command Firefox !firefox % > /dev/null
