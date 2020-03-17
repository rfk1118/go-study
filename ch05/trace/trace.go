package main

import (
	"log"
	"time"
)

func bigSlowOperation() {
	defer trace("bigSlowOperation")()

	time.Sleep(10 * time.Second)
}

func trace(s string) func() {
	now := time.Now()

	log.Printf("enter %s", s)

	return func() { log.Fatalf("exit %s (%s)", s, time.Since(now)) }
}

//$ go run trace.go
//2020/03/17 22:19:10 enter bigSlowOperation
//2020/03/17 22:19:20 exit bigSlowOperation (10.000660012s)
//exit status 1

func main() {
	bigSlowOperation()
}
