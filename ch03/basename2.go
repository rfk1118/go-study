package main

import "strings"

func baseNameTwo(s string) string {

	// 查找到最后一个/的切片
	slash := strings.LastIndex(s, "/")
	s = s[slash+1:]

	// 如果存在逗号,在原有基础上继续截取
	if dot := strings.LastIndex(s, "."); dot >= 0 {
		s = s[:dot]
	}

	return s
}
