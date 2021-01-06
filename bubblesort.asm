.CODE
	bubblesort PROC
		; rcx = arr
		; rdx = arr_size

		push r10
		push r11

		dec rdx
	_loop:
		mov r8, 0 ; i
		mov r9, 0 ; is_changed
	_loop_arr:
		cmp r8, rdx
		jge _loop_arr_break
		lea rax, [rcx+8*r8]
		mov r10, [rax] ; current_value
		add rax, 8
		mov r11, [rax] ; next_value
		cmp r10, r11
		jle _loop_arr_continue
		mov r9, 1
		mov [rax], r10
		sub rax, 8
		mov [rax], r11
	_loop_arr_continue:
		inc r8
		jmp _loop_arr
	_loop_arr_break:
		test r9, r9
		jnz _loop

		pop r11
		pop r10

		ret
	bubblesort ENDP
END
