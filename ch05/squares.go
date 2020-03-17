package main

import (
	"fmt"
)

func squares() func() int {
	var x int

	return func() int {
		x++
		return x * x
	}
}

//$ go run squares.go
//1
//4
//9
//16
//25
//36
//49

func main() {

	// 闭包
	f := squares()
	fmt.Println(f())
	fmt.Println(f())
	fmt.Println(f())
	fmt.Println(f())
	fmt.Println(f())
	fmt.Println(f())
	fmt.Println(f())

}
