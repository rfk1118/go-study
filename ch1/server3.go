package main

import (
	"fmt"
	"log"
	"net/http"
)

func main() {
	http.HandleFunc("/", handlerServer03)
	log.Fatal(http.ListenAndServe("localhost:9999", nil))
}

func handlerServer03(w http.ResponseWriter, r *http.Request) {

	//
	// GET / HTTP/1.1Header["User-Agent"] =["Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.132 Safari/537.36"]
	// Header["Sec-Fetch-Mode"] =["navigate"]
	// Header["Accept-Encoding"] =["gzip, deflate, br"]
	// Header["Accept-Language"] =["zh-CN,zh;q=0.9,en;q=0.8"]
	// Header["Connection"] =["keep-alive"]
	// Header["Upgrade-Insecure-Requests"] =["1"]
	// Header["Sec-Fetch-Dest"] =["document"]
	// Header["Accept"] =["text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.9"]
	// Header["Sec-Fetch-Site"] =["none"]
	// Host ]"localhost:9999"
	// RemoteAddr = "127.0.0.1:59477"
	_, _ = fmt.Fprintf(w, "%s %s %s", r.Method, r.URL, r.Proto)

	for k, v := range r.Header {
		_, _ = fmt.Fprintf(w, "Header[%q] =%q\n ", k, v)
	}

	_, _ = fmt.Fprintf(w, "Host ]%q\n", r.Host)

	_, _ = fmt.Fprintf(w, "RemoteAddr = %q\n", r.RemoteAddr)

	if err := r.ParseForm(); err != nil {
		log.Print(err)
	}

	for k, v := range r.Form {
		_, _ = fmt.Fprintf(w, "Form[%q]=%q\n", k, v)
	}
}
