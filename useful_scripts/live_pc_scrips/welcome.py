import time,sys

welcome_meassage = "Welcome skillZ 👋, where there is a shell there way ⚡ \n"
 
def typingPrint(text):
  for character in text:
    sys.stdout.write(character)
    sys.stdout.flush()
    time.sleep(0.013)
typingPrint(welcome_meassage)    

print('\n')
