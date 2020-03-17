package main

import (
	"flag"
	"fmt"
	"strings"
)

var n = flag.Bool("n", false, "omit trailing newLine")

var seq = flag.String("s", " ", "separator")

func main() {

	flag.Parse()

	fmt.Print(strings.Join(flag.Args(), *seq))

	if !*n {
		fmt.Println()
	}

	// test01

	// $ go run echo4.go a bc df
	// a bc df

	// test02
	// $ go run echo4.go -s /  a bc df
	// a/bc/df

	//$ go run echo4.go -help
	//Usage of /var/folders/24/bp35nm692n34ylfvcdgwcgs80000gn/T/go-build757605494/b001/exe/echo4:
	//-n    omit trailing newLine
	//-s string
	//separator (default " ")
	//exit status 2

}
