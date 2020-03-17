package main

import (
	"GoStudy/ch05/visit"
	"fmt"
	"golang.org/x/net/html"
	"net/http"
	"os"
)

func main() {

	for _, arg := range os.Args[1:] {
		links, err := findLinks(arg)

		if err != nil {
			fmt.Fprintf(os.Stderr, "findlinks2:%v\n", err)
			continue
		}

		for _, link := range links {
			fmt.Println(link)
		}
	}
}

func findLinks(url string) ([]string, error) {

	resp, err := http.Get(url)

	if err != nil {
		return nil, err
	}

	if resp.StatusCode != http.StatusOK {
		resp.Body.Close()
		return nil, fmt.Errorf("getting %s:%s", url, resp.Status)
	}

	doc, err := html.Parse(resp.Body)
	resp.Body.Close()

	if err != nil {
		resp.Body.Close()
		return nil, fmt.Errorf("parseing %s:%v", url, err)
	}

	return visit.Visit(nil, doc), nil
}
