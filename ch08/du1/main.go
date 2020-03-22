package main

import (
	"flag"
	"fmt"
	"io/ioutil"
	"os"
	"path/filepath"
)

func walkDir(dir string, fileSizes chan<- int64) {

	for _, info := range dirents(dir) {

		if info.IsDir() {
			join := filepath.Join(dir, info.Name())
			walkDir(join, fileSizes)
		} else {
			fileSizes <- info.Size()
		}

	}
}

func dirents(dir string) []os.FileInfo {
	readDir, err := ioutil.ReadDir(dir)
	if err != nil {
		fmt.Fprintf(os.Stderr, "du1:%v\n", err)
		return nil
	}
	return readDir
}
func main() {
	flag.Parse()

	roots := flag.Args()

	if len(roots) == 0 {
		roots = []string{"～"}
	}

	fileSize := make(chan int64)

	go func() {
		for _, root := range roots {

			walkDir(root, fileSize)

		}
		close(fileSize)
	}()

	var nFiles, nBytes int64

	for i := range fileSize {
		nFiles++
		nBytes += i
	}

	printDiskUsage(nFiles, nBytes)

}

func printDiskUsage(nFiles int64, nBytes int64) {

	fmt.Printf("%d filles %.1f Gb\n", nFiles, float64(nBytes)/1e9)
}
