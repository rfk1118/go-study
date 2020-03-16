package main

import (
	"fmt"
	"log"
	"net/http"
	"sync"
)

// 互斥锁
var mLock sync.Mutex
var count int

// var writeReadLock  sync.RWMutex

func main() {
	http.HandleFunc("/", handlerTwo)
	http.HandleFunc("/counter", counter)

	log.Fatal(http.ListenAndServe("localhost:8888", nil))

}

func counter(writer http.ResponseWriter, request *http.Request) {
	mLock.Lock()
	count++
	_, _ = fmt.Fprintf(writer, "Count %d\n", count)
	mLock.Unlock()
}

func handlerTwo(writer http.ResponseWriter, request *http.Request) {
	mLock.Lock()
	_, _ = fmt.Fprintf(writer, "Count %d\n", count)
	mLock.Unlock()
}
