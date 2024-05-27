# UCISW2-OLED

## Topic:

Snake game with display on OLED 128x64 (SSD1306), implemented on Spartan-3E Starter Board (FPGA).

## Signals description

**LEDGameOver** - LED(0) on board shows a actual game state: 0 (OFF) - running / 1 (ON) - game_over  
**Debug_LCD_Line_1** - First line on LCD display which contains HEX values of:

- X coordinate (1,2 digit)
- Y coordinate (4,5 digit)
- Direction (7 digit)
- Game state (9 digit)
