package main

import (
	"fmt"
	"os"
)

func main() {
	result, temp := " ", " "

	// 从切片中拿出1-n的值
	// $ go run ./echo2.go hello world
	// hello world
	for _, value := range os.Args[1:] {
		result += temp + value
	}

	fmt.Println(result)

	// s:= "";
	// var s string
	// var s = ""
	// var 	s string = ""

}
