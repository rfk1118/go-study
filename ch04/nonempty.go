package main

import "fmt"

func nonempty(s []string) []string {
	i := 0
	for _, temp := range s {
		if temp != "" {
			s[i] = temp
			i++
		}
	}
	return s[:i]
}

// $ go run nonempty.go
// ["one" "" "tree"]
// ["one" "tree"]
// ["one" "tree" "tree"]

func main() {
	data := []string{"one", "", "tree"}

	fmt.Printf("%q\n", data)

	fmt.Printf("%q\n", nonempty(data))

	fmt.Printf("%q\n", data)
}
