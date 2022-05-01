import os 
os.system("adb tcpip 5555")
os.system("adb connect 192.168.0.103:5555")
# os.system("scrcpy --bit-rate 2M --max-size 800")
os.system("scrcpy -b2M -m800")

# to switch back $ adb usb

