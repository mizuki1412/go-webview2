BINARY=go-webview2
VERSION=1.0.0
DATE=`date +%FT%T%z`
.PHONY: init build deploy tidy

default:
	@echo ${BINARY}
	@echo ${VERSION}
	@echo ${DATE}

build:
	@GOOS=windows GOARCH=amd64 go build -o build/${BINARY}.exe -ldflags "-w -h -H windowsgui" ./cmd/demo/main.go
	@echo "[ok] build ${BINARY}"

deploy: build
	@mv build/${BINARY}.exe ~/Downloads/${BINARY}2.exe
	@echo "[ok] deploy ${BINARY}.exe"
