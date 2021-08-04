GO:=go

get:
	$(GO) get -d -t -v ./...

test:
	$(GO) test -covermode=count -coverprofile=coverage.out ./...

tidy:
	$(GO) mod tidy

verify:
	$(GO) mod verify

fmt:
	gofmt -s -w .

build:
	go build -v
.PHONY: build

precommit:
	make get
	make verify
	make tidy
	make test
	make fmt

.PHONY: get test tidy verify fmt build precommit
