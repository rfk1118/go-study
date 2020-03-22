package main

import (
	"fmt"
	"os"
	"time"
)

func main() {

	abort := make(chan struct{})

	go func() {
		os.Stdin.Read(make([]byte, 1))

		abort <- struct{}{}
	}()

	fmt.Println("Commencing countdown.press return to abort")

	select {
	case <-time.After(10 * time.Second):
	// nothing todo
	case <-abort:
		fmt.Println("lanuch aborted")
		return

	}

	lanunch()
}

func lanunch() {
	fmt.Println("叶问4甄子丹牛逼!")
}
