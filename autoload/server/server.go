package main

import (
	"io/ioutil"
	"log"
	"net/http"

	"github.com/labstack/echo"
)

func main() {
	e := echo.New()
	e.GET("/preview.md", func(c echo.Context) error {

		content, err := ioutil.ReadFile("/tmp/hello.md")
		str := string(content[:])
		if err != nil {
			log.Fatal(err)
		}
		return c.String(http.StatusOK, str)
	})
	e.Logger.Fatal(e.Start(":9999"))
}
