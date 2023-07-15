import subprocess
output = subprocess.check_output("tasklist", shell=True)


def get_process_list(list_of_task):
    display_list = []
    for i in range(len(arr)-80, len(arr)-1):
        val = arr[i].split(" ")
        if len(val[0]) <= 16:
            if val[0] not in display_list:
                display_list.append(val[0])
    return display_list


def display_process_list(list_of_task):
    for i in range(len(list_of_task)):
        print(i+1, list_of_task[i])


arr = output.decode("utf-8").split("\n")

list_of_task = get_process_list(arr)
display_process_list(list_of_task)


def kill_process(list_of_task):
    args = input("Enter the process number to kill: ")
    if args == "0" or args=="":
        print("Exiting...")
        return
    single_arg = args.split(",")
    for i in range(len(single_arg)):
        single_arg[i] = int(single_arg[i])-1
    for j in range(len(single_arg)):
            subprocess.call("taskkill /F /PID " +
                            str(list_of_task[single_arg[j]]), shell=True)
            print("Process "+str(list_of_task[single_arg[j]])+" killed")


kill_process(list_of_task)
