function! ZoomMode()
    if exists("t:zoom_mode_enabled")
        " If zoom mode is on, make windows a size usable for coding as we jump
        " between them.
        set winwidth=120

        " We have to have a winheight bigger than we want to set winminheight.
        " But if we set winheight to be huge before winminheight, the
        " winminheight set will fail.
        set winheight=15
        set winminheight=15
        set winheight=999

        " Mark ZoomMode as off.
        unlet t:zoom_mode_enabled

        echo "  zoom"
    else
        " If zoom mode is not on, set resize limits much lower.
        set winwidth=20
        set winheight=15
        set winminheight=1
        set winheight=1

        " Mark that ZoomMode is on.
        let t:zoom_mode_enabled = 1

        echo "nozoom"
    endif
endfunction

" Toggle zoom mode on/off.
map <leader>z :call ZoomMode()<cr>
