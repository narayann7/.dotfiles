package main

import (
	"fmt"
	"os"
	"strconv"
	"strings"
)

func main() {
	// in := bufio.NewReader(os.Stdin)
	// fmt.Println("Enter the path to rename the files")
	// var path string
	// path, _ = in.ReadString('\n')

	fmt.Println("Enter the new name for the files")
	var renameTo string
	fmt.Scanln(&renameTo)

	// os.Chdir(path)
	files, err := os.ReadDir(".")
	path, _ := os.Getwd()

	if err != nil {
		fmt.Println(err)
	}
	count := 0
	for _, file := range files {
		if file.Type().IsRegular() {

			oldPath := path + "\\" + file.Name()
			extension := file.Name()[strings.LastIndex(file.Name(), "."):]
			newPath := path + "\\" + renameTo + "_" + strconv.Itoa(count) + extension

			os.Rename(oldPath, newPath)
			count++
		}
	}
}
