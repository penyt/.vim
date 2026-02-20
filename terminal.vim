function! FloatTermExit(job, status)
    if exists('s:float_term_win')
        call popup_close(s:float_term_win)
        unlet s:float_term_win
    endif
endfunction

function! OpenFloatTerm()
    " 1. 計算尺寸與位置
    let w = float2nr(&columns * 0.8)
    let h = float2nr(&lines * 0.8)
    let r = (&lines - h) / 2
    let c = (&columns - w) / 2

    " 2. 啟動 Terminal
    " exit_cb: 當 Shell 退出時執行 FloatTermExit
    " term_kill: 'kill' 確保 Buffer 消失時進程也被殺死
    noautocmd let buf = term_start(&shell, #{
        \ hidden: 1,
        \ term_finish: 'close',
        \ exit_cb: 'FloatTermExit',
        \ })

    let s:float_term_win = popup_create(buf, #{
        \ line: r,
        \ col: c,
        \ minwidth: w,
        \ minheight: h,
        \ border: [],
        \ title: ' Terminal ',
        \ borderchars: ['─', '│', '─', '│', '┌', '┐', '┘', '└'],
        \ })
endfunction

nnoremap <leader>t :call OpenFloatTerm()<CR>

