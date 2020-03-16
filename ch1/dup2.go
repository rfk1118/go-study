package main

import (
	"bufio"
	"fmt"
	"os"
)

func main() {

	counts := make(map[string]int)

	files := os.Args[1:]

	if len(files) == 0 {
		countLines(os.Stdin, counts)
	} else {
		for _, path := range files {
			open, openErr := os.Open(path)

			// defer open.Close()
			if openErr != nil {
				fmt.Print("打开文件出现错误", openErr)
				continue
			}

			_ = open.Close()

		}
	}

	for key, value := range counts {

		if value > 1 {
			fmt.Printf("%s\t%d\n", key, value)
		}
	}

}

func countLines(stdin *os.File, counts map[string]int) {

	input := bufio.NewScanner(stdin)

	for input.Scan() {
		counts[input.Text()]++
	}
}
