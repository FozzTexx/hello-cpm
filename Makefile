CC=sdcc
CFLAGS=-mz80 --code-loc 0x100 --no-std-crt0

hello.com:

hello1.com:

%.ihx: %.c
	$(CC) $(CFLAGS) $<
#	rm $*.sym $*.rel $*.lk $*.lst $*.noi $*.map

%.com: %.ihx
	objcopy -Iihex -Obinary $< $@
	echo $<

