package main

import (
	"fmt"
	"log"
)

func main() {

	naturals := make(chan int)
	squares := make(chan int)

	go func() {
		for x := 0; x <= 1000; x++ {
			naturals <- x
		}
		log.Println("naturals  close")
		close(naturals)
	}()

	go func() {
		for {
			x, ok := <-naturals
			if ok {
				squares <- x * x
			} else {
				log.Println("naturals has close")
				break
			}
		}

		close(squares)
	}()

	for {
		y, ok := <-squares
		if ok {
			fmt.Println(y)
		} else {
			break
		}
	}

}
