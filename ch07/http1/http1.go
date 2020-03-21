package main

import (
	"fmt"
	"log"
	"net/http"
)

// this is a dollars
type dollars float32

// Java toString 方法
func (d dollars) String() string {
	return fmt.Sprintf("$%2.f", d)
}

// map key String value float32
type database map[string]dollars

func (db database) ServeHTTP(w http.ResponseWriter, r *http.Request) {
	for item, price := range db {
		fmt.Fprintf(w, "%s:%s\n", item, price)
	}
}

func main() {
	db := database{"shoes": 50, "socks": 5}

	log.Fatal(http.ListenAndServe("localhost:8080", db))
}
