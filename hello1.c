/* Copyright 2016 by Chris Osborn <fozztexx@fozztexx.com>
 * http://insentricity.com
 *
 * Minimal hello world that calls CP/M BDOS to print a string
 */

const char *const string = "Hello world$";

main()
{
  __asm
    ld c,#9
    ld de,#_string
    call 5
  __endasm;
  return 0;
}
