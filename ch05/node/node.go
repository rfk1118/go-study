package node

import "golang.org/x/net/html"

// 真实项目中,这个肯定放到一个公共的包，并且有测试用例
func ForEachNode(n *html.Node, pre, post func(n *html.Node)) {

	if pre != nil {
		pre(n)
	}

	for c := n.FirstChild; c != nil; c = c.NextSibling {
		ForEachNode(c, pre, post)
	}

	if post != nil {
		post(n)
	}
}
