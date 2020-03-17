package links

import (
	"GoStudy/ch05/node"
	"fmt"
	"golang.org/x/net/html"
	"net/http"
)

func Extract(url string) ([]string, error) {

	resp, err := http.Get(url)

	if err != nil {
		return nil, err
	}

	if resp.StatusCode != http.StatusOK {
		resp.Body.Close()
		return nil, fmt.Errorf("getting %s as HTML :%v", url, err)
	}

	parse, err := html.Parse(resp.Body)
	resp.Body.Close()

	if err != nil {
		return nil, fmt.Errorf("parseing %s as HTML :%v", url, err)
	}

	var links []string

	visitNode := func(n *html.Node) {
		if n.Type == html.ElementNode && n.Data == "a" {
			for _, attribute := range n.Attr {
				if attribute.Key != "href" {
					continue
				}
				link, err2 := resp.Request.URL.Parse(attribute.Val)
				if err2 != nil {
					continue
				}
				links = append(links, link.String())
			}
		}
	}

	node.ForEachNode(parse, visitNode, nil)
	return links, nil
}
