package main

import "fmt"

//f(3)
//f(2)
//f(1)
//defer 1
//defer 2
//defer 3
//panic: runtime error: integer divide by zero
//
//goroutine 1 [running]:
//main.f(0x0)
///Users/renfakai/go/src/GoStudy/ch05/defer1/defer1.go:10 +0x24f
//main.f(0x1)
///Users/renfakai/go/src/GoStudy/ch05/defer1/defer1.go:12 +0x21e
//main.f(0x2)
///Users/renfakai/go/src/GoStudy/ch05/defer1/defer1.go:12 +0x21e
//main.f(0x3)
///Users/renfakai/go/src/GoStudy/ch05/defer1/defer1.go:12 +0x21e
//main.main()
///Users/renfakai/go/src/GoStudy/ch05/defer1/defer1.go:6 +0x2a
//Exiting.

func main() {
	f(3)
}

func f(x int) {
	fmt.Printf("f(%d)\n", x+0/x)
	defer fmt.Printf("defer %d\n", x)
	f(x - 1)
}
