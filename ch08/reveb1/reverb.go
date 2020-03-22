package main

import (
	"bufio"
	"fmt"
	"net"
	"strings"
	"time"
)

func echo(c net.Conn, shout string, delay time.Duration) {
	fmt.Fprintf(c, "\t", strings.ToUpper(shout))

	time.Sleep(delay)

	fmt.Println(c, "\t", shout)

	time.Sleep(delay)

	fmt.Fprintf(c, "\t", strings.ToLower(shout))
}

func handleConn(c net.Conn) {
	scanner := bufio.NewScanner(c)

	for scanner.Scan() {
		echo(c, scanner.Text(), 1*time.Second)
	}

	c.Close()
}
