package main

import (
	"fmt"
	"os"
)

func main() {
	var result, temp string

	// go run ./echo1.go hello world
	for i := 1; i < len(os.Args); i++ {
		result += temp + os.Args[i]
		temp = " "
	}

	// there  will println hello world
	fmt.Println(result)

}
