package main

import (
	"net/http"
	"io/ioutil"
	"strconv"
	"fmt"
)

func handler(w http.ResponseWriter, r *http.Request) {
	if r.Method != "OPTIONS" {
		panic("no")
	}
	body, err := ioutil.ReadAll(r.Body)
	if err != nil {
		panic(err)
	}
	i, _ := strconv.Atoi(string(body))
	w.Write([]byte(fmt.Sprint(i + 1)))
}

func main() {
	http.HandleFunc("/", handler)
	http.ListenAndServe(":8080", nil)
}
