package main

import "fmt"
import "github.com/tarfeef101/pdftron-go/src_linux/pdftron"
import "rsc.io/quote/v4"

func main() {
  fmt.Println("Hewwo, world; uWu!")
  fmt.Println(quote.Go())
  pdftron.PDFNetInitialize("demo:1637311996310:78953d410300000000db48d5211530ea9410a8c865ebab0451219e6b1c")
  doc := pdftron.NewPDFDoc()
  page := doc.PageCreate()
  doc.PagePushBack(page)
  doc.Save("output.pdf", uint(pdftron.SDFDocE_linearized));
  doc.Close()
}
