#!/bin/bash

lhs="$1"
rhs="$2"

autoread="set autoread"
approve_cmd="command! Approve execute \"silent !cp $lhs $rhs\" | qa"
keymap="nnoremap <Leader>a :Approve<CR>"
notify="echo 'Approve changes with :Approve or <Leader>a'"

tmux neww \
	vimdiff \
		-c "$autoread" \
		-c "$approve_cmd" \
		-c "$keymap" \
		-c "$notify" \
		"$lhs" "$rhs"

