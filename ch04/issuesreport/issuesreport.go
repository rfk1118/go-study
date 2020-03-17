package main

import (
	"GoStudy/ch04/githubown"
	"html/template"
	"log"
	"os"
	"time"
)

const templ = `{{.TotalCount}} issues:
{{range .Items}} -----------------------
Number:{{.Number}}
User:{{.User.Login}}
Title:{{.Title|printf "%.64s"}}
Age:{{.CreatedAt | daysAgo}} days
{{end}}
`

//$ ./issuesreport repo:golang/go is:open json decoder
//46 issues:
//-----------------------
//Number:33416
//User:bserdar
//Title:encoding/json: This CL adds Decoder.InternKeys
//Age:106751 days
//-----------------------
//Number:36225
//User:dsnet
//Title:encoding/json: the Decoder.Decode API lends itself to misuse
//Age:106751 days
//-----------------------
//Number:34647
//User:babolivier
//Title:encoding/json: fix byte counter increments when using decoder.To
//Age:106751 days
//-----------------------
//Number:29035
//User:jaswdr
//Title:proposal: encoding/json: add error var to compare  the returned
//Age:106751 days
//-----------------------
//Number:11046
//User:kurin
//Title:encoding/json: Decoder internally buffers full input
//Age:106751 days
//-----------------------
//Number:34543
//User:maxatome
//Title:encoding/json: Unmarshal &amp; json.(*Decoder).Token report differen
//Age:106751 days
//-----------------------
//Number:5901
//User:rsc
//Title:encoding/json: allow per-Encoder/per-Decoder registration of mar
//Age:106751 days
//-----------------------
//Number:32779
//User:rsc
//Title:proposal: encoding/json: memoize strings during decode?
//Age:106751 days
//-----------------------
//Number:28923
//User:mvdan
//Title:encoding/json: speed up the decoding scanner
//Age:106751 days
//-----------------------
//Number:12001
//User:lukescott
//Title:encoding/json: Marshaler/Unmarshaler not stream friendly
//Age:106751 days
//-----------------------
//Number:14750
//User:cyberphone
//Title:encoding/json: parser ignores the case of member names
//Age:106751 days
//-----------------------
//Number:31701
//User:lr1980
//Title:encoding/json: second decode after error impossible
//Age:106751 days
//-----------------------
//Number:34564
//User:mdempsky
//Title:go/internal/gcimporter: single source of truth for decoder logic
//Age:106751 days
//-----------------------
//Number:16212
//User:josharian
//Title:encoding/json: do all reflect work before decoding
//Age:106751 days
//-----------------------
//Number:30301
//User:zelch
//Title:encoding/xml: option to treat unknown fields as an error
//Age:106751 days
//-----------------------
//Number:33854
//User:Qhesz
//Title:encoding/json: unmarshal option to treat omitted fields as null
//Age:106751 days
//-----------------------
//Number:26946
//User:deuill
//Title:encoding/json: clarify what happens when unmarshaling into a non
//Age:106751 days
//-----------------------
//Number:6647
//User:btracey
//Title:x/tools/cmd/godoc: display type kind of each named type
//	Age:106751 days
//-----------------------
//Number:22480
//User:blixt
//Title:proposal: encoding/json: add omitnil option
//Age:106751 days
//-----------------------
//Number:27179
//User:lavalamp
//Title:encoding/json: no way to preserve the order of map keys
//Age:106751 days
//-----------------------
//Number:33835
//User:Qhesz
//Title:encoding/json: unmarshalling null into non-nullable golang types
//Age:106751 days
//-----------------------
//Number:22752
//User:buyology
//Title:proposal: encoding/json: add access to the underlying data causi
//Age:106751 days
//-----------------------
//Number:28143
//User:arp242
//Title:proposal: encoding/json: add &#34;readonly&#34; tag
//Age:106751 days
//-----------------------
//Number:21823
//User:243083df
//Title:encoding/xml: very low performance in xml parser
//Age:106751 days
//-----------------------
//Number:28189
//User:adnsv
//Title:encoding/json: confusing errors when unmarshaling custom types
//Age:106751 days
//-----------------------
//Number:36353
//User:dsnet
//Title:proposal: encoding/gob: allow override type marshaling
//Age:106751 days
//-----------------------
//Number:33714
//User:flimzy
//Title:proposal: encoding/json: Opt-in for true streaming support
//Age:106751 days
//-----------------------
//Number:7872
//User:extemporalgenome
//Title:encoding/json: Encoder internally buffers full output
//Age:106751 days
//-----------------------
//Number:30701
//User:LouAdrien
//Title:encoding/json: ignore tag &#34;-&#34; not working on embedded sub struct
//Age:106751 days
//-----------------------
//Number:17609
//User:nathanjsweet
//Title:encoding/json: ambiguous fields are marshalled
//Age:106751 days

var report = template.Must(template.New("issuelist").
	Funcs(template.FuncMap{"daysAgo": DayAgo}).
	Parse(templ))

func main() {
	result, err := githubown.SearchIssues(os.Args[1:])

	if err != nil {
		log.Fatal(err)
	}

	if err := report.Execute(os.Stdout, result); err != nil {
		log.Fatal(err)
	}
}

func DayAgo(t time.Time) int {
	return int(time.Since(t).Hours() / 24)
}
