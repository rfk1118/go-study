package main

import (
	"fmt"
	"time"
)

func spinner(deloy time.Duration) {
	for {
		for _, r := range `-\|/` {
			// slow
			fmt.Printf("\r%c", r)
			time.Sleep(deloy)
		}
	}
}

func fib(x int) int {
	if x < 2 {
		return x
	}
	return fib(x-1) + fib(x-2)
}

func main() {
	go spinner(100 * time.Millisecond)

	const n = 45

	fibN := fib(45)

	fmt.Printf("\r Fibonacci(%d)=%d\n", n, fibN)
}
