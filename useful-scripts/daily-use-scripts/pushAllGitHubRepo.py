from ast import Str
import os
import sys
import python_paths
# use double "\" in path to make it work


def pushAllCode(message, branchName):
    if len(message) <= 1 or message == '':
        message = "commit from script"
    os.system('git add .')
    message = '\''+message+'\''
    os.system(f'git commit -m {message}')
    os.system('git push origin '+branchName)


def convertSpaceToUnderscore(string):
    return string.replace(' ', '_')


def allRepo(commit_message_for_dump, commit_message_for_script,commit_message_for_dsa):
    os.chdir(python_paths.dump_Path)
    pushAllCode(convertSpaceToUnderscore(commit_message_for_dump), 'main')
    os.chdir(python_paths.script_Path)
    pushAllCode(convertSpaceToUnderscore(commit_message_for_script), 'main')
    os.chdir(python_paths.dsa_Path)
    pushAllCode(convertSpaceToUnderscore(commit_message_for_script), 'master')


pushWithMessage = sys.argv[1]

if pushWithMessage == '0':
    allRepo("commit from script", "commit from script", "commit from script")
if pushWithMessage == '1':
    commit_message_for_dump = input("Enter commit message for dump: ")
    if commit_message_for_dump == '':
        commit_message_for_dump = "testing commit"

    commit_message_for_script = input("Enter commit message for script: ")
    if commit_message_for_script == '':
        commit_message_for_script = "testing commit"

    commit_message_for_dsa = input("Enter commit message for dsa: ")
    if commit_message_for_dsa == '':
        commit_message_for_dsa = "testing commit"

    allRepo(commit_message_for_dump, commit_message_for_script,commit_message_for_dsa)