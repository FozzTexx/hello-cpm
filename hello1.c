const char *const string = "Hello world$";

main()
{
  __asm
    ld c,#9
    ld de,#_string
    call 5
  __endasm;
  return 1;
}
