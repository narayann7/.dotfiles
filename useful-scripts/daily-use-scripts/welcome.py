import time,sys

welcome_meassage = "Welcome skillZ 👀\nWhere there is a shell there way ⚡ \n"
 
def typingPrint(text):
  for character in text:
    sys.stdout.write(character)
    sys.stdout.flush()
    time.sleep(0.01)
typingPrint(welcome_meassage)    

print('\n')
