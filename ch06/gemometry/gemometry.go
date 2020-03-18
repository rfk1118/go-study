package main

import (
	"fmt"
	"math"
)

type Point struct {
	X, Y float64
}

// 切片命名方法,后续中切片排序需要实现排序的方法
type Path []Point

// 普通方法
func Distance(p, q Point) float64 {
	return math.Hypot(q.X-p.Y, q.Y-p.X)
}

// Point对象方法
func (p Point) Distance(q Point) float64 {
	return math.Hypot(q.X-p.Y, q.Y-p.X)
}

func main() {
	p := Point{1, 2}
	q := Point{4, 6}
	fmt.Println(Distance(p, q))
	fmt.Println(p.Distance(q))

	fmt.Println(p)

	path := Path{{1, 1}, {5, 1}, {5, 4}, {1, 1}}
	fmt.Println(path.Distance())

}

func (path Path) Distance() float64 {
	sum := 0.0
	for i := range path {
		if i > 0 {
			sum += path[i-1].Distance(path[i])
		}
	}
	return sum
}
