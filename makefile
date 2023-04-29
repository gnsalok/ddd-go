BINARY=ddd-go-build

build:
	go build -o  ${BINARY}

test:
	go test ./... -coverprofile=coverage.out

coverage: test
	go tool cover -func=coverage.out