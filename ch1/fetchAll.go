package main

import (
	"fmt"
	"io"
	"io/ioutil"
	"net/http"
	"os"
	"time"
)

//
//$ go run fetchAll.go http://wiki.fengbangleasing.com/pages/viewpage.action\?pageId\=26809259 http://wiki.fengbangleasing.com/pages/viewpage.action\?pageId\=26809259
//0   30524 http://wiki.fengbangleasing.com/pages/viewpage.action?pageId=26809259
//0   30524 http://wiki.fengbangleasing.com/pages/viewpage.action?pageId=26809259
//0.28s elapsed

func main() {
	start := time.Now()

	// channel
	ch := make(chan string)

	for _, url := range os.Args[1:] {
		go fetch(url, ch)
	}

	for range os.Args[1:] {
		fmt.Println(<-ch)
	}

	fmt.Printf("%.2fs elapsed \n", time.Since(start).Seconds())
}

// only write channel ch chan <- string  safe
func fetch(url string, ch chan<- string) {
	start := time.Now()

	resp, err := http.Get(url)
	if err != nil {
		ch <- fmt.Sprint(err)
		return
	}

	nBytes, err := io.Copy(ioutil.Discard, resp.Body)

	_ = resp.Body.Close()

	if err != nil {
		ch <- fmt.Sprintf(" while reading %s:%v", url, err)
		return
	}

	sec := time.Since(start).Seconds()

	ch <- fmt.Sprintf("%2.f %7d %s", sec, nBytes, url)

}
