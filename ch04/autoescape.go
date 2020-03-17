package main

import (
	"html/template"
	"log"
	"os"
)

var data struct {
	A string
	B template.HTML
}

// $ go run autoescape.go > autoescape.html
func main() {
	const templ = `<p>A:{{.A}}<p>B:{{.B}}`

	t := template.Must(template.New("escape").Parse(templ))

	data.A = "<b>Hello!</b>"

	data.B = "<b>Hello!</b>"

	if err := t.Execute(os.Stdout, data); err != nil {
		log.Fatal(err)
	}
}
