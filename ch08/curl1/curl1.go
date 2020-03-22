package main

import (
	"GoStudy/ch05/links"
	"fmt"
	"log"
	"os"
)

func crawl(url string) []string {
	fmt.Println(url)

	extract, err := links.Extract(url)

	if err != nil {
		log.Fatal(err)
	}

	return extract
}

func main() {
	workList := make(chan []string)
	go func() { workList <- os.Args[1:] }()
	seed := make(map[string]bool)
	for strings := range workList {
		for _, link := range strings {
			if !seed[link] {
				seed[link] = true
				go func(link string) {
					workList <- crawl(link)
				}(link)
			}
		}
	}
}
