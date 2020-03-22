package main

import (
	"bufio"
	"fmt"
	"log"
	"net"
)

type client chan<- string

var (
	entering = make(chan client)
	leaving  = make(chan client)
	// 素有接受的客户消息
	message = make(chan string)
)

func main() {
	listen, err := net.Listen("tcp", "localhost:8080")

	if err != nil {
		log.Fatal(err)
	}

	go boroadcaster()

	for {
		conn, err := listen.Accept()
		if err != nil {
			log.Print(err)
			continue
		}

		go handlerConnection(conn)
	}

}

func handlerConnection(conn net.Conn) {
	ch := make(chan string)
	go clientWrite(conn, ch)
	who := conn.RemoteAddr().String()
	ch <- "You are " + who
	entering <- ch
	input := bufio.NewScanner(conn)
	for input.Scan() {
		message <- who + ":" + input.Text()
	}
	leaving <- ch
	message <- who + "has left"

	conn.Close()

}

func clientWrite(conn net.Conn, ch chan string) {
	for s := range ch {
		fmt.Fprintln(conn, s)
	}
}

func boroadcaster() {
	clients := make(map[client]bool)
	for {
		select {
		case msg := <-message:
			for c := range clients {
				c <- msg
			}
		case cli := <-entering:
			clients[cli] = true
		case cli := <-leaving:
			delete(clients, cli)
			close(cli)
		}
	}

}
