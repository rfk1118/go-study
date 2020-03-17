package main

import (
	"GoStudy/ch04/githubown"
	"html/template"
	"log"
	"os"
)

var issueList = template.Must(template.New("issuelist").Parse(
	`<h1>{{.TotalCount}} issues</h1>
    <table>
    <tr style='text-align:left'>
	<th>#</th>
	<th>State</th>
	<th>User</th>
	<th>Title</th>
	</tr>
	{{range.Items}}
 	<tr style='text-align:left'>
	<th><a href='{{.HTMLURL}}'>{{.Number}}</a></th>
	<th>{{.State}}</th>
	<th><a href='{{.User.HTMLURL}}'>{{.User.Login}}</a></th>
	<th><a href='{{.HTMLURL}}'>{{.Title}}</a></th>
	</tr>
	{{end}}
	</table>
	`))

// Golang大法好
func main() {
	result, err := githubown.SearchIssues(os.Args[1:])

	if err != nil {
		log.Fatal(err)
	}

	if err := issueList.Execute(os.Stdout, result); err != nil {
		log.Fatal(err)
	}
}
