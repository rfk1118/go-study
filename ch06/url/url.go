package main

import (
	"fmt"
)

type Values map[string][]string

func (v Values) Get(key string) string {
	if vs := v[key]; len(vs) > 0 {
		return vs[0]
	}

	return ""
}

func (v Values) Add(key, value string) {
	// 向map的value切片中增加一个值，并回写到map
	v[key] = append(v[key], value)
}

func main() {
	va := Values{}
	get := va.Get("hello")
	fmt.Println(get)
	va.Add("hello", "key1")
	fmt.Println(va)
	va.Add("hello", "key2")
	fmt.Println(va)
	va.Add("hello", "key3")
	fmt.Println(va)

	i, j := 10, 20

	fmt.Println(i)
	fmt.Println(j)

	i, j = j, i

	fmt.Println(i)
	fmt.Println(j)
}
