/* Copyright 2016 by Chris Osborn <fozztexx@fozztexx.com>
 * http://insentricity.com
 *
 * Minimal hello world that uses a function to call CP/M BDOS to print a string
 */

void print(const char *const str);

main()
{
  print("Hello world$");
  return 0;
}

void print(const char *const str)
{
  str;
  __asm
    ld c,#9
    ld d,5 (ix)
    ld e,4 (ix)
    call 5
  __endasm;
}
