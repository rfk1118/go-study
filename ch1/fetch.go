package main

import (
	"fmt"
	"io/ioutil"
	"net/http"
	"os"
)

// $ go run fetch.go www.baidu.com
// fetch:Get www.baidu.com: unsupported protocol scheme ""
// exit status 1
func main() {

	for _, url := range os.Args[1:] {
		resp, err := http.Get(url)

		if err != nil {
			_, _ = fmt.Fprintf(os.Stderr, "fetch:%v\n", err)
			os.Exit(1)
		}

		body, err := ioutil.ReadAll(resp.Body)
		resp.Body.Close()

		if err != nil {
			_, _ = fmt.Fprintf(os.Stderr, "fetch reading:%s :%v\n", url, err)
			os.Exit(1)
		}

		fmt.Printf("%s", body)
	}
}
