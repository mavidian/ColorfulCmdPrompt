@echo off
REM A script to set the color of text printed to the console.
REM Intended to be called from other .bat files like so:
REM    call SetTextColor <color>
REM , where <color> is one of: red, green, yellow, blue, magenta, cyan, white

REM ESC character (Ascii code 27)
set esc=

If "%1" == "red" (
  <nul set /p=%esc%[0;91m
  goto done
)
If "%1" == "green" (
  <nul set /p=%esc%[0;92m
  goto done
)
If "%1" == "yellow" (
  <nul set /p=%esc%[0;93m
  goto done
)
If "%1" == "blue" (
  <nul set /p=%esc%[0;38;2;64;128;255m
  goto done
)
)
If "%1" == "magenta" (
  <nul set /p=%esc%[0;95m
  goto done
)
)
If "%1" == "cyan" (
  <nul set /p=%esc%[0;96m
  goto done
)
)
If "%1" == "white" (
  <nul set /p=%esc%[0;97m
  goto done
)
REM TODO: add other colors and/or display attributes as needed

REM If color is unrecognized or omitted, then reset color (back to the console original).
<nul set /p=%esc%[0m

:done
