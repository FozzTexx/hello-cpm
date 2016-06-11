CC=sdcc
CFLAGS=-mz80 --code-loc 0x100 --no-std-crt0

hello.com:

hello1.com:

hello2.com: putchar_cpm.rel hello2.c
	$(CC) $(CFLAGS) hello2.c putchar_cpm.rel
	objcopy -Iihex -Obinary hello2.ihx $@

%.ihx: %.c
	$(CC) $(CFLAGS) $< 
	rm $*.sym $*.rel $*.lk $*.lst $*.noi $*.map

%.com: %.ihx
	objcopy -Iihex -Obinary $< $@
	echo $<

%.rel: %.s
	sdasz80 -o $<
