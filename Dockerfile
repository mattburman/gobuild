FROM golang:1.14

ENV GO_PATH=/go

RUN go get \
    golang.org/x/tools/cmd/goimports \
    golang.org/x/tools/go/loader \
    golang.org/x/tools/imports \
    github.com/vektah/gorunpkg \
    github.com/vektra/mockery/cmd/mockery \
    github.com/cespare/reflex \
    github.com/derekparker/delve/cmd/dlv \
    github.com/golangci/golangci-lint/cmd/golangci-lint

WORKDIR /go

