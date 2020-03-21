package main

import (
	"flag"
	"fmt"
	"time"
)

var periods = flag.Duration("t", time.Second, "sleep periods")

func main() {
	flag.Parse()

	fmt.Printf("Sleeping for %v...,\n", *periods)
	fmt.Println(time.Now().Format("2006-01-02 15:04:05"))
	time.Sleep(*periods)
	fmt.Println(time.Now().Format("2006-01-02 15:04:05"))
}
