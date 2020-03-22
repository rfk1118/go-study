package main

import "fmt"

// only input chan
func counter(out chan<- int) {
	defer close(out)
	for x := 0; x < 1000; x++ {
		out <- x
	}
}

func squarer(out chan<- int, in <-chan int) {
	for i := range in {
		out <- i * i
	}

	close(out)
}

func printer(in <-chan int) {
	for i := range in {
		fmt.Println(i)
	}
}

func main() {
	naturals := make(chan int)
	squares := make(chan int)
	go counter(naturals)
	go squarer(squares, naturals)
	printer(squares)
}
