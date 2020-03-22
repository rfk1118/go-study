package main

import (
	"fmt"
	"time"
)

func main() {
	fmt.Println("commencing countDown")
	// <-chan Time
	tick := time.Tick(1 * time.Second)
	for count := 10; count > 0; count-- {
		fmt.Println(count)
		<-tick
	}

	lanunch()
}

func lanunch() {
	fmt.Println("叶问4甄子丹牛逼!")
}
