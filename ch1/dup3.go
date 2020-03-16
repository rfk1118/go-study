package main

import (
	"fmt"
	"io/ioutil"
	"os"
	"strings"
)

func main() {
	counts := make(map[string]int)

	for _, fileName := range os.Args[1:] {
		content, err := ioutil.ReadFile(fileName)

		if err != nil {
			fmt.Print("打开文件出现错误", err)
			continue
		}

		for _, line := range strings.Split(string(content), "\n") {
			counts[line]++
		}

		for key, value := range counts {
			if value > 1 {
				fmt.Printf("%s\t%d\n", key, value)
			}
		}

	}

}
