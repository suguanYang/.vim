function! s:get_visual_selection()
    " Why is this not a built-in Vim script function?!
    let [line_start, column_start] = getpos("'<")[1:2]
    let [line_end, column_end] = getpos("'>")[1:2]
    let lines = getline(line_start, line_end)
    if len(lines) == 0
        return ''
    endif
    let lines[-1] = lines[-1][: column_end - (&selection == 'inclusive' ? 1 : 2)]
    let lines[0] = lines[0][column_start - 1:]
		let text = join(lines, "\n")
		return text[0:-1]
endfunction

function! s:write_clipboard_mac(text)
	call system('pbcopy', a:text)
	return
endfunction

function! s:read_clipboard_mac()
  return system('pbpaste')
endfunction

function! Copy_to_clipboard()
	let text = s:get_visual_selection()
	echo "| " . text . "| has been copy to clipboard"  
	call system('pbcopy', text)
	return
endfunction

function! Paste_from_clipboard()
  let text = s:read_clipboard_mac()
  echo "copy |" . text . " | from clipboard"
  let result = setreg("", text)
endfunction

vnoremap <C-c> :call Copy_to_clipboard()<RETURN>
noremap <C-v> :call Paste_from_clipboard()<RETURN> p<cr>
