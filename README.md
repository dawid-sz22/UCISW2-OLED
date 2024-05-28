# UCISW2-OLED

## Topic:

Snake game with display on OLED 128x64 (SSD1306), implemented on Spartan-3E Starter Board (FPGA).

## Signals description on board and LCD

**LEDGameOver** - LED(0) onboard shows an actual game state: 0 (OFF) - running / 1 (ON) - game_over  
**Debug_LCD_Line_1** - First line on LCD which contains HEX values of:

- X coordinate (1th-2th digit)
- Y coordinate (4th-5th digit)
- Direction (7th digit) -> 0: UP, 1: LEFT, 2: RIGHT, 3: DOWN
- Game state (9th digit) -> 0: RUNNING. 1: GAME_OVER
- Delay (11th-16th digit) -> shows clock ticks per delay (the time when a device is waiting before claiming the next pixel)
  - from 0 to 256 claimed pixels -> **150ms**
  - from 257 to 512 claimed pixels -> **100ms**
  - from 513 to 1536 claimed pixels -> **80ms**
  - from 1537 to 3072 claimed pixels -> **70ms**
  - from 3073 to 7936 claimed pixels -> **60ms**

**Debug_LCD_Line_2** - Second line on LCD which contains HEX values of:

- Counter of claimed pixels on display (1th-4th digit)
- Best score of claimed pixels (6th-9th digit)

**ButtonStart** - East button on board to start the game after a game is over.  
**RESET** - South button on the board to reset a whole device.
