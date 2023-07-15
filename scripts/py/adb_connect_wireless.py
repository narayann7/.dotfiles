import os
import sys
port=sys.argv[1]
os.system(f"adb connect 192.168.1.15:{port}")