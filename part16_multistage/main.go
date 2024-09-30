package main

import (
	"fmt"
	"net/http"
)

func main() {
	println("Server is running in port 8085")
	http.HandleFunc("/", HelloServer)
	http.ListenAndServe(":8085", nil)
}

func HelloServer(w http.ResponseWriter, r *http.Request) {
	fmt.Fprintf(w, "Hello, World!")
}
