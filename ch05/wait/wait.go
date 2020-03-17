package main

import (
	"fmt"
	"log"
	"net/http"
	"os"
	"time"
)

func WaitForServer(url string) error {

	const timeOut = 1 * time.Minute

	deadLine := time.Now().Add(timeOut)

	for tries := 0; time.Now().Before(deadLine); tries++ {

		_, err := http.Get(url)

		if err == nil {
			return nil
		}

		log.Fatalf("server not responding (%s);retrying...", err)

		time.Sleep(time.Second << uint(tries))
	}

	return fmt.Errorf("server %s failed to response after %s", url, timeOut)
}

func main() {

	url := os.Args[1]

	if err := WaitForServer(url); err != nil {
		fmt.Fprintf(os.Stderr, "Site is down:%v\n", err)
		os.Exit(1)
	}
}
