# UCISW2-OLED

## Topic:

Snake game with display on OLED 128x64 (SSD1306), implemented on Spartan-3E Starter Board (FPGA).

## Signals description on board and LCD

**LEDGameOver** - LED(0) on board shows a actual game state: 0 (OFF) - running / 1 (ON) - game_over  
**Debug_LCD_Line_1** - First line on LCD display which contains HEX values of:

- X coordinate (1th,2th digit)
- Y coordinate (4th,5th digit)
- Direction (7th digit) -> 0:UP, 1:LEFT, 2:RIGHT, 3:DOWN
- Game state (9th digit) -> 0:RUNNING. 1:GAME_OVER

**ButtonStart** - East button on board to start game after a game over.  
**RESET** - South button on board to reset all device.
