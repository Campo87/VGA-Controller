import sys
import numpy as arr
import matplotlib.image as img
import matplotlib.pyplot as plt

def digitize(pixel):
    step = 0.0625
    if(step*0 <= pixel and pixel < step*1):
        return '0000'
    elif(step*1 <= pixel and pixel < step*2):
        return '0001'
    elif(step*2 <= pixel and pixel < step*3):
        return '0010'
    elif(step*3 <= pixel and pixel < step*4):
        return '0011'
    elif(step*4 <= pixel and pixel < step*5):
        return '0100'
    elif(step*5 <= pixel and pixel < step*6):
        return '0101'
    elif(step*6 <= pixel and pixel < step*7):
        return '0110'
    elif(step*7 <= pixel and pixel < step*8):
        return '0111'
    elif(step*8 <= pixel and pixel < step*9):
        return '1000'
    elif(step*9 <= pixel and pixel < step*10):
        return '1001'
    elif(step*10 <= pixel and pixel < step*11):
        return '1010'
    elif(step*11 <= pixel and pixel < step*12):
        return '1011'
    elif(step*12 <= pixel and pixel < step*13):
        return '1100'
    elif(step*13 <= pixel and pixel < step*14):
        return '1101'
    elif(step*14 <= pixel and pixel < step*15):
        return '1110'
    else:
        return '1111'

F_r=open('vgaRed.mem','w')
F_g=open('vgaGreen.mem','w')
F_b=open('vgaBlue.mem','w')

fname=str(sys.argv[1])

img_data=img.imread(fname)

for x in range(len(img_data)):
    r = ''
    g = ''
    b = ''
    for y in range(len(img_data[0])):
        r+=digitize(img_data[x][y][0]) + ' '
        g+=digitize(img_data[x][y][1]) + ' '
        b+=digitize(img_data[x][y][2]) + ' '
    F_r.write(r+'\n')
    F_g.write(g+'\n')
    F_b.write(b+'\n')

F_r.close()
F_g.close()
F_b.close()
