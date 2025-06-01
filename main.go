package main

import (
	"fmt"
	"net/http"
)

func main() {
	http.Handle("/", http.FileServer(http.Dir("./public")))
	fmt.Println("Server running at http://localhost:3000")
	http.ListenAndServe(":3000", nil)
}
