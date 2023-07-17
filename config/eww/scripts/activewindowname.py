from ewmh import EWMH
ewmh = EWMH()

win = ewmh.getActiveWindow()
win = ewmh.getWmName(win)

print(win)
