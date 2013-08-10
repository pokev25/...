template = """REGEDIT4
[HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Keyboard Layout]
"Scancode Map"=hex:00,00,00,00,00,00,00,00,%.2d,00,00,00,%s,00,00,00,00"""

ESC = 0x01
CTRL_L = 0x1d
CAPS_LOCK = 0x3a

keymap = [
    (CTRL_L, CAPS_LOCK),
    (ESC, CTRL_L),
    (CAPS_LOCK, ESC),
]

vals = ",".join("%.2x,00,%.2x,00"%(i,j) for (i,j) in keymap)

output = template%(len(keymap) + 1, vals)

print(output)
