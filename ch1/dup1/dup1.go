package main

import (
	"bufio"
	"fmt"
	"os"
)

func main() {

	// map init
	counts := make(map[string]int)

	input := bufio.NewScanner(os.Stdin)

	for input.Scan() {
		counts[input.Text()]++
		// line :=input.text
		// count[line] =count[line]+1
	}

	for key, value := range counts {
		if value > 1 {
			fmt.Printf("%d\t%s\n", key, value)
		}
	}
}
