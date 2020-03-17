package main

import (
	"fmt"
	"os"
	"strings"
)

func main() {
	// $ go run ./echo3.go hello world
	// hello world
	fmt.Println(strings.Join(os.Args[1:], " "))
}
