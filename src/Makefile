

build:
	rm -rf dist
	GOOS=linux GOARCH=arm64 CGO_ENABLED=0 go build -o dist/arm64/openwrt-hello ./
	GOOS=linux GOARCH=amd64 CGO_ENABLED=0 go build -o  dist/x86-64/openwrt-hello ./