package main

import (
	"encoding/json"
	"fmt"
	"log"
)

type Movie struct {
	Title  string
	Year   int  `json:"released"`
	Color  bool `json:"color,omitempty"`
	Actors []string
}

var movies = []Movie{
	{Title: "Casablanca", Year: 1942, Color: false, Actors: []string{"Humphrey Bogart", "Ingrid Bergman"}},
	{Title: "Cool Hand Luke", Year: 1967, Color: true, Actors: []string{"Paul newman"}},
	{Title: "Bullitt", Year: 1968, Color: true, Actors: []string{"Steve McQueen", "Jacqueline Bisset"}},
}

func main() {
	marshal, err := json.Marshal(movies)

	if err != nil {
		log.Fatalf("JSON marshaling failed :%s", err)
	}

	fmt.Printf("%s\n", marshal)

	format, errTwo := json.MarshalIndent(movies, "", "   ")

	if errTwo != nil {
		log.Fatalf("JSON marshaling failed :%s", errTwo)
	}

	fmt.Printf("%s\n", format)
}
