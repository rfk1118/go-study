package main

import (
	"bufio"
	"fmt"
	"net"
	"strings"
	"time"
)

func handlerConn(c net.Conn) {

	scanner := bufio.NewScanner(c)

	defer c.Close()

	for scanner.Scan() {
		go echo(c, scanner.Text(), 1*time.Second)
	}

}

func echo(c net.Conn, shout string, delay time.Duration) {
	fmt.Fprintf(c, "\t", strings.ToUpper(shout))

	time.Sleep(delay)

	fmt.Println(c, "\t", shout)

	time.Sleep(delay)

	fmt.Fprintf(c, "\t", strings.ToLower(shout))
}
