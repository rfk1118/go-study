package main

import (
	"GoStudy/ch05/links"
	"fmt"
	"log"
)

var tokens = make(chan struct{}, 20)

func main() {

	workList := make(chan []string)

	unseedlinks := make(chan string)

	for i := 0; i < 20; i++ {
		go func() {
			for links := range unseedlinks {
				foundList := crawl(links)
				go func() { workList <- foundList }()
			}
		}()
	}

	seen := make(map[string]bool)

	for list := range workList {
		for _, s := range list {
			if !seen[s] {
				seen[s] = true
				unseedlinks <- s
			}
		}
	}

}

func crawl(url string) []string {
	fmt.Println(url)
	list, err := links.Extract(url)
	if err != nil {
		log.Print(err)
	}
	return list
}
