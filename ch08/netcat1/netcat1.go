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

	defer dial.Close()

	mustCopy(os.Stdout, dial)
}

func mustCopy(stdout *os.File, dial net.Conn) {

	if _, err := io.Copy(stdout, dial); err != nil {
		log.Fatal(err)
	}

}
