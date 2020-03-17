package main

import "fmt"

type Flags uint

const (
	FlagUp Flags = 1 << iota
	FlagBroadCast
	FlagLoopBack
	FlagPointToPoint
	FlagMulticast
)

func IsUp(v Flags) bool { return v&FlagUp == FlagUp }
func TurnDown(v *Flags) {
	*v &^= FlagUp
}

func SetBroadCast(v *Flags) {
	*v |= FlagBroadCast
}

func IsCast(v Flags) bool { return v&(FlagBroadCast|FlagMulticast) != 0 }

//
//10001 true
//10000 false
//10010 false
//10010 true

func main() {
	var v Flags = FlagMulticast | FlagUp

	fmt.Printf("%b %t\n", v, IsUp(v))

	TurnDown(&v)

	fmt.Printf("%b %t\n", v, IsUp(v))

	SetBroadCast(&v)

	fmt.Printf("%b %t\n", v, IsUp(v))

	fmt.Printf("%b %t\n", v, IsCast(v))
}
