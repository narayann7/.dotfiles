from ast import Str
import os
import sys
import python_paths
# use double "\" in path to make it work 

def pushAllCode(message,branchName):
    if len(message) <=1:
        message="testing commit"
    os.system('git add .')
    message='\''+message+'\''
    os.system(f'git commit -m {message}')
    os.system('git push origin '+branchName)

def convertSpaceToUnderscore(string):
    return string.replace(' ','_')




pushWithMessage=sys.argv[1]
# print(python_paths.dump_Path)
if pushWithMessage=='0':
    print("zero")
if pushWithMessage=='1':
    commit_message_for_dump=input("Enter commit message for dump: ")
    commit_message_for_script=input("Enter commit message for script: ")
    os.chdir(python_paths.dump_Path)
    pushAllCode(convertSpaceToUnderscore(commit_message_for_dump),'main')
    os.chdir(python_paths.script_Path)
    pushAllCode(convertSpaceToUnderscore(commit_message_for_script),'main')




    



