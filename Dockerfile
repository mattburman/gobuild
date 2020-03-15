FROM golang:1.14

ENV GO_PATH=/go

RUN GRPC_HEALTH_PROBE_VERSION=v0.3.2 && \
    wget -qO/bin/grpc_health_probe https://github.com/grpc-ecosystem/grpc-health-probe/releases/download/${GRPC_HEALTH_PROBE_VERSION}/grpc_health_probe-linux-amd64 && \
    chmod +x /bin/grpc_health_probe

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

