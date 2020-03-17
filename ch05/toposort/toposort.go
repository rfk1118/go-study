package main

import (
	"fmt"
	"sort"
)

// key String value List
var prereqs = map[string][]string{
	"algorithms": {"data structures"},
	"calculus":   {"linear algebra"},

	"compilers": {
		"data structures",
		"formal languages",
		"computer organization",
	},

	"data structures":       {"discrete math"},
	"databases":             {"data structures"},
	"discrete math":         {"intro to programming"},
	"formal languages":      {"discrete math"},
	"networks":              {"operating systems"},
	"operating systems":     {"data structures", "computer organization"},
	"programming languages": {"data structures", "computer organization"},
}

func main() {

	// 这里返回的是一个数组
	for index, value := range topSort(prereqs) {
		fmt.Printf("%d :\t%s\n", index+1, value)
	}
}

func topSort(sortData map[string][]string) []string {
	var order []string

	seen := make(map[string]bool)

	var visitAll func(items []string)

	// 闭包 这里使用了一个匿名函数，如果不定义一个变量就不能递归调用自己了

	visitAll = func(items []string) {
		for _, item := range items {
			if !seen[item] {
				//
				seen[item] = true
				visitAll(sortData[item])
				order = append(order, item)
			}

		}
	}

	var keys []string

	for key := range sortData {
		// 这里先取出map中的value,转换成一个大的切片
		keys = append(keys, key)
	}

	// 这里调用匿名函数
	visitAll(keys)

	sort.Strings(keys)
	return order

}
