import sys
import time

welcomeMessage = "Welcome skillZ 👀\nWhere there is a shell there way ⚡ \n"


def typingPrint(text):
    for character in text:
        sys.stdout.write(character)
        sys.stdout.flush()
        time.sleep(0.002)


typingPrint(welcomeMessage)
