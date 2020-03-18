package main

import (
	"bytes"
	"fmt"
)

type IntSet struct {
	words []uint64
}

func (s *IntSet) has(x int) bool {
	word, bit := x/64, uint(x%64)
	// 如果无此角标肯定不存在这个值,存在角标则查看这个值的第n位是否位1
	return word < len(s.words) && s.words[word]&(1<<bit) != 0
}

func (s *IntSet) Add(x int) {
	word, bit := x/64, uint(x%64)
	for word >= len(s.words) {
		s.words = append(s.words, 0)
	}
	s.words[word] |= 1 << bit
}

func (s *IntSet) UnionWith(t *IntSet) {
	for i, word := range t.words {
		if i < len(s.words) {
			s.words[i] |= word
		} else {
			s.words = append(s.words, word)
		}
	}
}

func (s *IntSet) String() string {
	var buf bytes.Buffer
	buf.WriteByte('{')
	for i, word := range s.words {
		if word == 0 {
			continue
		}
		for j := 0; j < 64; j++ {
			// 如果第n位为0说明这个数字不存在
			if word&(1<<uint(j)) != 0 {
				if buf.Len() > len("{") {
					buf.WriteByte(' ')
				}

				// 64*下角标+ 第n位 1 = 0 *64+9    2 = 0*64+10
				// 0000000011
				fmt.Fprintf(&buf, "%d", 64*i+j)
			}
		}
	}
	buf.WriteByte('}')
	return buf.String()
}

func main() {
	var x, y IntSet

	x.Add(1)
	x.Add(2)
	x.Add(3)
	// {[000001110]} = 2三次方+2的平方+2
	x.Add(12)
	x.Add(15)

	fmt.Println(x.String())
	fmt.Println(&x)
	fmt.Println(x)

	y.Add(42)
	y.Add(9)

	fmt.Println(y.String())

	x.UnionWith(&y)
	fmt.Println(x.String())
	fmt.Println(x.has(9))
	fmt.Println(x.has(123))
}
