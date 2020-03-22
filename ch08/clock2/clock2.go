package main

import (
	"io"
	"log"
	"net"
	"time"
)

func main() {

	listen, err := net.Listen("tcp", "localhost:8080")

	if err != nil {
		log.Fatal(err)
	}

	for {
		accept, acceptErr := listen.Accept()

		if acceptErr != nil {
			log.Println(acceptErr)
			continue
		}

		go handlerConn(accept)
	}
}

func handlerConn(accept net.Conn) {

	defer accept.Close()

	for {
		_, err := io.WriteString(accept, time.Now().Format("15:04:05\n"))

		if err != nil {
			return
		}

		time.Sleep(1 * time.Second)
	}

}
