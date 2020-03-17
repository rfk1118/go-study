package main

import (
	"io"
	"net/http"
	"os"
	"path"
)

func fetch(url string) (filename string, n int64, err error) {
	get, err := http.Get(url)

	if err != nil {
		return "", 0, err
	}

	defer get.Body.Close()

	local := path.Base(get.Request.URL.Path)

	if local == "/" {
		local = "index.html"
	}

	f, err := os.Create(local)

	if err != nil {
		return "", 0, err
	}

	n, err = io.Copy(f, get.Body)

	if closeErr := f.Close(); err == nil {
		err = closeErr
	}
	return local, n, err
}
