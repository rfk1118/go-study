package main

import "fmt"

//$ go run append.go
//0 cap=1  [0]
//1 cap=2  [0 1]
//2 cap=4  [0 1 2]
//3 cap=4  [0 1 2 3]
//4 cap=8  [0 1 2 3 4]
//5 cap=8  [0 1 2 3 4 5]
//6 cap=8  [0 1 2 3 4 5 6]
//7 cap=8  [0 1 2 3 4 5 6 7]
//8 cap=16         [0 1 2 3 4 5 6 7 8]
//9 cap=16         [0 1 2 3 4 5 6 7 8 9]

func main() {
	var x, y []int

	for i := 0; i < 10; i++ {
		y = appendInt(x, i)

		fmt.Printf("%d cap=%d\t %v\n", i, cap(y), y)

		x = y
	}
}

// slice 动态扩容
func appendInt(x []int, y int) []int {

	var z []int
	zLen := len(x) + 1

	if zLen <= cap(x) {
		// slice仍然未满，有想像nio中的byteBuf
		z = x[:zLen]
	} else {
		// slice已无空间，为它分配一个新的底层数组
		// 底层*2

		zCap := zLen

		if zCap < 2*len(x) {
			zCap = 2 * len(x)
		}

		z = make([]int, zLen, zCap)

		copy(z, x)
	}

	z[len(x)] = y
	return z
}
