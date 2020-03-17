package main

import (
	"GoStudy/ch05/node"
	"fmt"
	"golang.org/x/net/html"
	"net/http"
	"strings"
)

func title(url string) error {

	response, err := http.Get(url)

	if err != nil {
		return err
	}

	ct := response.Header.Get("Content-type")

	if ct != "text/html" && !strings.HasPrefix(ct, "text/html;") {
		response.Body.Close()
		return fmt.Errorf("%s has type %s not text/html", url, ct)
	}

	doc, err := html.Parse(response.Body)
	response.Body.Close()

	if err != nil {
		return fmt.Errorf("%s has html %v ", url, err)
	}

	visitNode := func(n *html.Node) {
		if n.Type == html.ElementNode && n.Data == "title" &&
			n.FirstChild != nil {
			fmt.Println(n.FirstChild.Data)
		}
	}

	node.ForEachNode(doc, visitNode, nil)

	return nil
}
