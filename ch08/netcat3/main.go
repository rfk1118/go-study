package main

import (
	"io"
	"log"
	"net"
	"os"
)

func main() {
	dial, err := net.Dial("tcp", "localhost:8080")

	if err != nil {
		log.Fatal(err)
	}

	channleA := make(chan struct{})

	go func() {
		io.Copy(os.Stdout, dial)

		log.Println("done")

		channleA <- struct{}{}
	}()

	mustCopy(dial, os.Stdin)

	dial.Close()

	<-channleA
}

func mustCopy(dst io.Writer, src io.Reader) {
	if _, err := io.Copy(dst, src); err != nil {
		log.Fatal(err)
	}
}
