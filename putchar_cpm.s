        .area   _CODE
_putchar::
_putchar_rr_s::
        ld      hl,#2
        add     hl,sp

	ld	c,#2
        ld      e,(hl)
	call	5

        ret

_putchar_rr_dbs::
        ld      c,#2
	call	5

        ret
	