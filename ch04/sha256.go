package main

import (
	"crypto/sha256"
	"fmt"
)

func main() {
	//c1 := sha256.Sum256([]byte("x"))
	//c2 := sha256.Sum256([]byte("x"))
	//2d711642b726b04401627ca9fbac32f5c8530fb1903cc4db02258717921a4881
	//	//2d711642b726b04401627ca9fbac32f5c8530fb1903cc4db02258717921a4881
	//	//true
	//	//[32]uint8

	c1 := sha256.Sum256([]byte("x"))
	c2 := sha256.Sum256([]byte("X"))

	//2d711642b726b04401627ca9fbac32f5c8530fb1903cc4db02258717921a4881
	//4b68ab3847feda7d6c62c1fbcbeebfa35eab7351ed5e78f4ddadea5df64b8015
	//false
	//[32]uint8

	fmt.Printf("%x\n%x\n%t\n%T\n", c1, c2, c1 == c2, c1)

	s := "hello world"

	s2 := s[0:2]

	fmt.Println(&s)

	fmt.Println(&s2)
}
