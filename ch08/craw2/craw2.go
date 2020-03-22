package main

import (
	"GoStudy/ch05/links"
	"fmt"
	"log"
	"os"
)

var tokens = make(chan struct{}, 20)

func crawl(url string) []string {
	fmt.Println(url)
	tokens <- struct{}{}
	extract, err := links.Extract(url)
	// 释放令牌
	<-tokens
	if err != nil {
		log.Print(err)
	}
	return extract
}

func main() {
	workList := make(chan []string)
	// 等待发送到任务列表的数量
	var n int

	// 塞进去一个数字
	n++

	go func() { workList <- os.Args[1:] }()

	//并发爬取web

	seed := make(map[string]bool)

	for ; n > 0; n-- {
		list := <-workList

		for _, link := range list {

			if !seed[link] {
				seed[link] = true
				// 塞进去了新的url，所以++
				n++

				go func(link string) {
					workList <- crawl(link)
				}(link)
			}

		}
	}

}
