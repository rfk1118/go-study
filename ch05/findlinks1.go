package main

import (
	"fmt"
	"golang.org/x/net/html"
	"os"
	"study/ch05/visit"
)

func main() {

	doc, err := html.Parse(os.Stdin)
	if err != nil {
		fmt.Fprintf(os.Stderr, "findlinks1:%v\n", err)
		os.Exit(1)
	}

	for _, link := range visit.Visit(nil, doc) {
		fmt.Println(link)
	}

}
