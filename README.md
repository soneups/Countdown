# Countdown Clock
Hardware and Software countdown projects

![alt text](https://garys.one/wp-content/uploads/2019/06/img_1011-1-e1560792176341.jpg "Breadboard")

![alt text](https://garys.one/wp-content/uploads/2019/06/img_1013-1-e1560792457893-1024x617.jpg "With display")

## Hardware list
+ ItsyBitsy M4 Express [http://adafru.it/3800]
+ Adafruit 4 x 14-Seg FeatherWing [http://adafru.it/3089] Dual Alphanumeric Display White x 2 [http://adafru.it/2153]
+ DS3231 Precision RTC FeatherWing - RTC Add-on For Feather Board - [http://adafru.it/3028]

### Device addressing
Using i2c addresses, the display is (default) 0x70 and the RTC is 0x68 (which cannot be changed)
It is possible to drive additional displays by soldering the Address Jumpers on the FeatherWing jumpers A0 (+1), A1 (+2) and A2 (+4) adding

### Using CircuitPython via REPL to display the i2c addresses of connected kit
```python
#Python code
```
### using Python on a Raspberry pi to display the i2c addresses of connected kit
```python
#Python code
```
#### Setting the date & time via a Raspberry Pi
```python
#Python code
```
#### Setting the data & time via an ItsyBitsy M4 express in repl mode - i.e. from the command line
```python
#Circuit Python code
```
#### Breadboard and wiring layout

#### Circuit Python code for the actual countdown clock [code.py](../master/ItsyBitsyM4/CIRCUITPYTHON/code_working.py)
```python
#.
# Windows 7 countdown to end of support - python datetime library not available :-o
# (c) Gary@Sone.net
# 3March2019
#.

import board
import busio as io
import adafruit_ht16k33.segments
import adafruit_ds3231
from time import sleep

i2c = io.I2C(board.SCL, board.SDA)
display = adafruit_ht16k33.segments.Seg14x4(i2c)
rtc = adafruit_ds3231.DS3231(i2c)
rtcdt = rtc.datetime
rtcmonth = rtcdt.tm_mon
rtcday = rtcdt.tm_mday

# set up the calendar
daysinjan = 14
daysinfeb = 28
daysinmar = 31
daysinapr = 30
daysinmay = 31
daysinjun = 30
daysinjul = 31
daysinaug = 31
daysinsep = 30
daysinoct = 31
daysinnov = 30
daysindec = 31

# we have all we need, start to display it.
display.fill(0)
display.show()
display.brightness = 3

display.print('WIN7')
sleep(0.75)
display.fill(0)

display.print('BY  ')
sleep(0.75)
display.fill(0)

display.print('GARY')
sleep(0.75)
display.fill(0)

display.print('SONE')
sleep(0.75)
display.fill(0)

if rtcmonth == 1:
        display.print((daysinjan-rtcday))
elif rtcmonth == 2:
        display.print((daysinfeb-rtcday))
elif rtcmonth == 3:
        display.print( (daysinmar+daysinapr+daysinmay+daysinjun+daysinjul+daysinaug+daysinsep+daysinoct+daysinnov+daysindec+daysinjan)-rtcday)
elif rtcmonth == 4:
        display.print ((daysinapr+daysinmay+daysinjun+daysinjul+daysinaug+daysinsep+daysinoct+daysinnov+daysindec+daysinjan)-rtcday)
elif rtcmonth == 5:
        display.print((daysinmay+daysinjun+daysinjul+daysinaug+daysinsep+daysinoct+daysinnov+daysindec+daysinjan)-rtcday)
elif rtcmonth == 6:
        display.print((daysinjun+daysinjul+daysinaug+daysinsep+daysinoct+daysinnov+daysindec+daysinjan)-rtcday)
elif rtcmonth == 7:
        display.print((daysinjul+daysinaug+daysinsep+daysinoct+daysinnov+daysindec+daysinjan)-rtcday)
elif rtcmonth == 8:
        display.print((daysinaug+daysinsep+daysinoct+daysinnov+daysindec+daysinjan)-rtcday)
elif rtcmonth == 9:
        display.print((daysinsep+daysinoct+daysinnov+daysindec+daysinjan)-rtcday)
elif rtcmonth == 10:
        display.print((daysinoct+daysinnov+daysindec+daysinjan)-rtcday)
elif rtcmonth == 11:
        display.print((daysinnov+daysindec+daysinjan)-rtcday)
elif rtcmonth == 12:
        display.print((daysindec+daysinjan)-rtcday)
else:
        display.print('RTC ')
```

###### remove me
+ Learning the art of markdown via [https://jbt.github.io/markdown-editor/] and [https://github.com/adam-p/markdown-here/wiki/Markdown-Cheatsheet]
