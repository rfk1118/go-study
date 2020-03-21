package main

import (
	"fmt"
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

func (db database) list(w http.ResponseWriter, r *http.Request) {
	for item, price := range db {
		fmt.Fprintf(w, "%s:%s\n", item, price)
	}
}

func (db database) price(w http.ResponseWriter, r *http.Request) {
	item := r.URL.Query().Get("item")
	price, ok := db[item]
	if !ok {
		w.WriteHeader(http.StatusNotFound)
		fmt.Fprintf(w, "no such item:%q\n", item)
		return
	}
	fmt.Fprintf(w, "%s\n", price)
}

func main() {
	db := database{"shoes": 50, "socks": 5}
	serveMux := http.NewServeMux()
	serveMux.Handle("/list", http.HandlerFunc(db.list))
	serveMux.Handle("/price", http.HandlerFunc(db.price))
	http.ListenAndServe("localhost:8080", serveMux)
}
