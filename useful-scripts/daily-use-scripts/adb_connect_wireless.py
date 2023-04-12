import os
import sys
port=sys.argv[1]
# os.chdir("C:\\Users\\narayann7\\AppData\Local\\Android\\Sdk\\platform-tools")
os.system(f"adb connect 192.168.1.183:{port}")