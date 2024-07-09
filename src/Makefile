

build:
	rm -rf ../files
	GOOS=linux GOARCH=arm64 CGO_ENABLED=0 go build -o ../files/arm64/openwrt-hello ./
	GOOS=linux GOARCH=amd64 CGO_ENABLED=0 go build -o  ../files/x86-64/openwrt-hello ./