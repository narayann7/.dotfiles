import os
from datetime import datetime

now = datetime.now()
dt_string = now.strftime("%d_%m_%Y_%H_%M_%S")
image_name = "screenshot_" + dt_string + ".png"
screenshot_path = 'C:\\Users\\narayann7\\Pictures\\Screenshots'
screenshot_path_with_image_name = 'C:\\Users\\narayann7\\Pictures\\Screenshots\\'+image_name
# move_to_path = 'C:\\Users\\narayann7\\Documents\\love\\GitHubRepos\\dump\\testing\\test_dump'
move_to_path = 'C:\\Users\\narayann7\\AppData\\Roaming\\Microsoft\\Windows\\"Network Shortcuts"\\op7'

os.chdir(screenshot_path)

os.system(
    f'C:\\Users\\narayann7\\Documents\\love\\GitHubRepos\\scripts-n-files\\useful-scripts\\daily-use-scripts\\screen_snap.bat {image_name}')
# os.system(f'COPY  {screenshot_path_with_image_name} {move_to_path}')
os.remove("screen_snap.exe")
