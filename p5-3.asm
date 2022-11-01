;-----------------------------------
;将内存ffff:0 ~ ffff:b中的数据拷贝到 0:200~0:20b单元中
;-----------------------------------

assume cs:code
code segment
        mov bx, 0
        mov cx, 12

    s:  mov ax, 0ffffh
        mov ds, ax ; ds中赋值为org的段地址
        mov dl, [bx]

        mov ax, 0020h
        mov ds, ax ; ds中赋值为dest的段地址
        mov [bx], dl

        inc bx
        loop s

        mov ax, 4c00h
        int 21h

code ends
end