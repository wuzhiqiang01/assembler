;-----------------------------------
;将内存ffff:0 ~ ffff:b中的数据拷贝到 0:200~0:20b单元中
;-----------------------------------

; 使用附加段寄存器

assume cs:code
code segment

        mov ax, 0ffffh
        mov ds, ax

        mov ax, 0020h
        mov es, ax

        mov bx, 0
        mov cx, 12

    s:  mov dl, [bx]
        mov es:[bx], dl  ;段前缀的使用
        
        inc bx
        loop s

        mov ax, 4c00h
        int 21h

code ends
end