package main

import (
	"fmt"
	"os"
	"strconv"
	"study/ch02/tempconv"
)

// $ go run cf.go 123
// 123 F=50.55555555555556 C,123 C=100.33333333333333 F

func main() {

	for _, arg := range os.Args[1:] {
		t, error := strconv.ParseFloat(arg, 64)

		if error != nil {
			fmt.Fprintf(os.Stderr, "cf:%v\n", error)
			os.Exit(1)
		}

		f := tempconv.Fahrenheit(t)
		c := tempconv.Celsius(t)

		fmt.Printf("%s=%s,%s=%s\n", f, tempconv.FToC(f), c, tempconv.CToF(c))
	}

}
