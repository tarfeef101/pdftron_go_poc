# Purpose
This is a small proof-of-concept to demonstrate how to use the PDFTron Go Package in a "standard" go application using go packaging tools. Also in Docker, because I'm still me.

# Usage
`docker-compose run go` should run the application, if you make package changes, you may want to either spin up a container with the folder mounted in, or have the same version of `go` installed locally, and then run `go mod tidy` to get everything in-order, then you can run normally.
