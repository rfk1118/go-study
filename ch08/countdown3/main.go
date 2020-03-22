package main

import (
	"fmt"
	"os"
	"time"
)

func main() {

	abort := make(chan struct{})
	go func() {
		os.Stdin.Read(make([]byte, 1)) // read a single byte
		abort <- struct{}{}
	}()

	fmt.Println("Commencing countdown .Press return to abort")

	tick := time.Tick(1 * time.Second)

	for countdown := 10; countdown > 0; countdown-- {
		fmt.Println(countdown)

		select {
		case <-tick:
			fmt.Println("nothing todo!")
		case <-abort:
			fmt.Println("launch aborted!")
			return
		}
	}

	lanunch()
}

func lanunch() {
	fmt.Println("叶问4甄子丹牛逼!")
}
