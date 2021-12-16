BINARY=go-webview2
VERSION=1.0.0
DATE=`date +%FT%T%z`
.PHONY: build

build:
	@GOOS=windows GOARCH=amd64 go build -o build/${BINARY}.exe -ldflags "-w -h -H windowsgui" ./cmd/demo/main.go
	@echo "[ok] build ${BINARY}"
